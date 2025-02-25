cask "font-lxgw-simxihei" do
  version "1.010"
  sha256 "8240fc86f4e226b4e9b1b3c5614b07e17b29c4a99e641b57e3922b73de9c725a"

  url "https://github.com/lxgw/SimXiZhi/releases/download/v#{version}/SimXiHei.ttf"
  name "LXGW SimXiHei"
  name "新晰黑体"
  homepage "https://github.com/lxgw/SimXiZhi"

  font "SimXiHei.ttf"

  # No zap stanza required
end
