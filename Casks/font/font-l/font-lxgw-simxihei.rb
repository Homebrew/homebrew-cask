cask "font-lxgw-simxihei" do
  version "1.005"
  sha256 "3af07e4b26327783605664d7194ab596a4ba8dcba54ede4463881a8abbfd1d64"

  url "https://github.com/lxgw/SimXiZhi/releases/download/v#{version}/SimXiHei.ttf"
  name "LXGW SimXiHei"
  name "新晰黑体"
  homepage "https://github.com/lxgw/SimXiZhi"

  font "SimXiHei.ttf"

  # No zap stanza required
end
