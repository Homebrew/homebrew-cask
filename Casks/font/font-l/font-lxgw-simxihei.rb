cask "font-lxgw-simxihei" do
  version "1.024.7"
  sha256 "ecf18db4528165e05359c879b889616eb16d9e3e64f50a6be8b15d13fb05c0d6"

  url "https://github.com/lxgw/SimXiZhi/releases/download/v#{version}/SimXiHei.ttf"
  name "LXGW SimXiHei"
  name "新晰黑体"
  homepage "https://github.com/lxgw/SimXiZhi"

  font "SimXiHei.ttf"

  # No zap stanza required
end
