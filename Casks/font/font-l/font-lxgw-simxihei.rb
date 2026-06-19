cask "font-lxgw-simxihei" do
  version "1.102"
  sha256 "3645cf985ee8fc23479b2ba22bbc113e566e10f9a5971a356b925b0bf01815b6"

  url "https://github.com/lxgw/SimXiZhi/releases/download/v#{version}/SimXiHei.ttf"
  name "LXGW SimXiHei"
  name "新晰黑体"
  homepage "https://github.com/lxgw/SimXiZhi"

  font "SimXiHei.ttf"

  # No zap stanza required
end
