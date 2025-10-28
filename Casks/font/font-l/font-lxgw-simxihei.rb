cask "font-lxgw-simxihei" do
  version "1.024.5"
  sha256 "5b33d38beb22ea0e5a548269f093cb3f913f48397a3db3be4914804433423878"

  url "https://github.com/lxgw/SimXiZhi/releases/download/v#{version}/SimXiHei.ttf"
  name "LXGW SimXiHei"
  name "新晰黑体"
  homepage "https://github.com/lxgw/SimXiZhi"

  font "SimXiHei.ttf"

  # No zap stanza required
end
