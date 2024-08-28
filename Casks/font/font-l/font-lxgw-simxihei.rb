cask "font-lxgw-simxihei" do
  version "1.003"
  sha256 "28ab8410e00326a6041aece7b60a0bd88603d0b97ea5e6c2514bea948430f4cc"

  url "https://github.com/lxgw/SimXiZhi/releases/download/v#{version}/SimXiHei.ttf"
  name "LXGW SimXiHei"
  name "新晰黑体"
  homepage "https://github.com/lxgw/SimXiZhi"

  font "SimXiHei.ttf"

  # No zap stanza required
end
