cask "font-lxgw-simxihei" do
  version "1.006"
  sha256 "89841dd500bc1e6829e7c5d473846046ae48885761121e0b8c8f3359c80069b9"

  url "https://github.com/lxgw/SimXiZhi/releases/download/v#{version}/SimXiHei.ttf"
  name "LXGW SimXiHei"
  name "新晰黑体"
  homepage "https://github.com/lxgw/SimXiZhi"

  font "SimXiHei.ttf"

  # No zap stanza required
end
