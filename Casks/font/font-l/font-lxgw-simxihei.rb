cask "font-lxgw-simxihei" do
  version "1.025"
  sha256 "ba1f49c571f9e51d74ad8b7d135cf56cf3a412e75df81eeb28c58a835b5b42bb"

  url "https://github.com/lxgw/SimXiZhi/releases/download/v#{version}/SimXiHei.ttf"
  name "LXGW SimXiHei"
  name "新晰黑体"
  homepage "https://github.com/lxgw/SimXiZhi"

  font "SimXiHei.ttf"

  # No zap stanza required
end
