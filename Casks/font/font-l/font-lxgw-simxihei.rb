cask "font-lxgw-simxihei" do
  version "1.011"
  sha256 "30b2486b082c35c62702503fa97f371f8e9bb908108bc28f1a3b20b9d8afc1bc"

  url "https://github.com/lxgw/SimXiZhi/releases/download/v#{version}/SimXiHei.ttf"
  name "LXGW SimXiHei"
  name "新晰黑体"
  homepage "https://github.com/lxgw/SimXiZhi"

  font "SimXiHei.ttf"

  # No zap stanza required
end
