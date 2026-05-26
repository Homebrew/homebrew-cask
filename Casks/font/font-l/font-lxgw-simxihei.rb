cask "font-lxgw-simxihei" do
  version "1.101"
  sha256 "2682b202a3e0399a7d6b1d3a66cb94caca795511735a87d4e2db3ab580e0b8c8"

  url "https://github.com/lxgw/SimXiZhi/releases/download/v#{version}/SimXiHei.ttf"
  name "LXGW SimXiHei"
  name "新晰黑体"
  homepage "https://github.com/lxgw/SimXiZhi"

  font "SimXiHei.ttf"

  # No zap stanza required
end
