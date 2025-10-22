cask "font-lxgw-simxihei" do
  version "1.024.4"
  sha256 "78de66eed533228f653472a77c779d34c73f02646e3ef28e822161f364d88b87"

  url "https://github.com/lxgw/SimXiZhi/releases/download/v#{version}/SimXiHei.ttf"
  name "LXGW SimXiHei"
  name "新晰黑体"
  homepage "https://github.com/lxgw/SimXiZhi"

  font "SimXiHei.ttf"

  # No zap stanza required
end
