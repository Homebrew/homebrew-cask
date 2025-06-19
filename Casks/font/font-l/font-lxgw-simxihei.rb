cask "font-lxgw-simxihei" do
  version "1.023.1"
  sha256 "8faeeea96357f8c65d29f977dd05897571bb92b8727d6e27df4f2dd5550ca668"

  url "https://github.com/lxgw/SimXiZhi/releases/download/v#{version}/SimXiHei.ttf"
  name "LXGW SimXiHei"
  name "新晰黑体"
  homepage "https://github.com/lxgw/SimXiZhi"

  font "SimXiHei.ttf"

  # No zap stanza required
end
