cask "font-lxgw-simxihei" do
  version "1.022.1"
  sha256 "e7eb9690d66bf23f4563bdc42bcfcf3bd47913fe9086919c91ca14c94f6cba37"

  url "https://github.com/lxgw/SimXiZhi/releases/download/v#{version}/SimXiHei.ttf"
  name "LXGW SimXiHei"
  name "新晰黑体"
  homepage "https://github.com/lxgw/SimXiZhi"

  font "SimXiHei.ttf"

  # No zap stanza required
end
