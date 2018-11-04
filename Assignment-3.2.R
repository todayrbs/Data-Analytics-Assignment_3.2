# Assignment 3.2

# 1. Obtain the elements of the union between two character vectors.
vec1 = c(rownames(mtcars[1:15,]))
vec2 = c(rownames(mtcars[10:32,]))
vec1
vec2

union(vec1, vec2)    # returns all the elements of vec1 and vec2 without repeating common elements

# 2. Get those elements that are common to both vectors.
vec1 = c(rownames(mtcars[1:15,]))
vec2 = c(rownames(mtcars[10:32,]))

intersect(vec1,vec2)         # names of common elements

which(vec1 %in% vec2)        # index of common elements
vec1[which(vec1 %in% vec2)]  # names of common elements

# 3. Get the difference of the elements between two character vectors.
vec1 = c(rownames(mtcars[1:15,]))
vec2 = c(rownames(mtcars[10:32,]))

setdiff(vec1, vec2)   # difference of vec 1 with vec 2
setdiff(vec2, vec1)   # difference of vec 2 with vec 1

# 4. Test the quality of two character vectors.
vec1 = c(rownames(mtcars[1:15,]))
vec2 = c(rownames(mtcars[11:25,]))

setequal(vec1, vec2)    # is vec1 equal to vec 2

setequal( union(vec1, vec2),
          c(setdiff(vec1, vec2), intersect(vec1, vec2), setdiff(vec1, vec2)))