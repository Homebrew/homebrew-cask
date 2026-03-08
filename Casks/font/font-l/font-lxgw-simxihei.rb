cask "font-lxgw-simxihei" do
  version "1.027.2"
  sha256 "8153056f1df002cb41457c4d78dd161a6f3b183241f435824476ec0971a647eb"

  url "https://github.com/lxgw/SimXiZhi/releases/download/v#{version}/SimXiHei.ttf"
  name "LXGW SimXiHei"
  name "新晰黑体"
  homepage "https://github.com/lxgw/SimXiZhi"

  font "SimXiHei.ttf"

  # No zap stanza required
end
