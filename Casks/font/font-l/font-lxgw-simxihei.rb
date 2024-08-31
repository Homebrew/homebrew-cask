cask "font-lxgw-simxihei" do
  version "1.004"
  sha256 "03531c155fbc227de2dcaa412456d4a114f55c29088a5685c78857d3b25f93b1"

  url "https://github.com/lxgw/SimXiZhi/releases/download/v#{version}/SimXiHei.ttf"
  name "LXGW SimXiHei"
  name "新晰黑体"
  homepage "https://github.com/lxgw/SimXiZhi"

  font "SimXiHei.ttf"

  # No zap stanza required
end
