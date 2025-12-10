cask "font-lxgw-simxihei" do
  version "1.025.4"
  sha256 "e9973de825147ec2ab05f6793d0dd27e8734ca84a7ceafd72277346c1adc5c15"

  url "https://github.com/lxgw/SimXiZhi/releases/download/v#{version}/SimXiHei.ttf"
  name "LXGW SimXiHei"
  name "新晰黑体"
  homepage "https://github.com/lxgw/SimXiZhi"

  font "SimXiHei.ttf"

  # No zap stanza required
end
