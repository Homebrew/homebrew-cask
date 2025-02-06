cask "font-lxgw-simxihei" do
  version "1.009"
  sha256 "45e2c1a235d5100d1e8c41f2d457a2b5084ed63f0d7493f0ce1d61007c82a4a5"

  url "https://github.com/lxgw/SimXiZhi/releases/download/v#{version}/SimXiHei.ttf"
  name "LXGW SimXiHei"
  name "新晰黑体"
  homepage "https://github.com/lxgw/SimXiZhi"

  font "SimXiHei.ttf"

  # No zap stanza required
end
