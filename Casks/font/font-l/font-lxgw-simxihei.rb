cask "font-lxgw-simxihei" do
  version "1.027.1"
  sha256 "6f6221fdb7e0147413a064f5e880595ec0d2f0b608ce0f6fe3965c4a11494a94"

  url "https://github.com/lxgw/SimXiZhi/releases/download/v#{version}/SimXiHei.ttf"
  name "LXGW SimXiHei"
  name "新晰黑体"
  homepage "https://github.com/lxgw/SimXiZhi"

  font "SimXiHei.ttf"

  # No zap stanza required
end
