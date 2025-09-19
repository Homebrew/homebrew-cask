cask "font-lxgw-simxihei" do
  version "1.024"
  sha256 "5c125793e1a0db2e3ea6cb0006ec72c4952b96ed785ce95e1952e30586492f2c"

  url "https://github.com/lxgw/SimXiZhi/releases/download/v#{version}/SimXiHei.ttf"
  name "LXGW SimXiHei"
  name "新晰黑体"
  homepage "https://github.com/lxgw/SimXiZhi"

  font "SimXiHei.ttf"

  # No zap stanza required
end
