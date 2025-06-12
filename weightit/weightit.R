# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Entropy balancing Use weightit (WeightIt) With (In) R Software
install.packages("WeightIt")
library("cobalt")
library("WeightIt")
weightit = read.csv("https://raw.githubusercontent.com/timbulwidodostp/weightit/main/weightit/weightit.csv",sep = ";")
# Estimation Entropy balancing Use weightit (WeightIt) With (In) R Software
weightit_1 <- weightit(treat ~ age + educ + married + nodegree + re74, data = weightit, method = "ebal", estimand = "ATT")
summary(weightit_1)
bal.tab(weightit_1)
weightit_2 <- weightit(race ~ age + educ + married + nodegree + re74, data = weightit, method = "ebal", estimand = "ATE", standardize = TRUE)
summary(weightit_2)
bal.tab(weightit_2)
# Entropy balancing Use weightit (WeightIt) With (In) R Software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished