cask "font-lxgw-simxihei" do
  version "1.024.3"
  sha256 "5c51fe8ec5ba244a313460927f1e50a880fe10c06223be056cf987d57a27842f"

  url "https://github.com/lxgw/SimXiZhi/releases/download/v#{version}/SimXiHei.ttf"
  name "LXGW SimXiHei"
  name "新晰黑体"
  homepage "https://github.com/lxgw/SimXiZhi"

  font "SimXiHei.ttf"

  # No zap stanza required
end
