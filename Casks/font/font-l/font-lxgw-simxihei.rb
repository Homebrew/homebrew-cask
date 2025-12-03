cask "font-lxgw-simxihei" do
  version "1.025.2"
  sha256 "243f77e56d791a5661376b02ed01509b72fa5e821058fcc3c1bf32c8ee52c85f"

  url "https://github.com/lxgw/SimXiZhi/releases/download/v#{version}/SimXiHei.ttf"
  name "LXGW SimXiHei"
  name "新晰黑体"
  homepage "https://github.com/lxgw/SimXiZhi"

  font "SimXiHei.ttf"

  # No zap stanza required
end
