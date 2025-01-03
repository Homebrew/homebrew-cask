cask "font-lxgw-simxihei" do
  version "1.008"
  sha256 "73a0d405c71eb1cde0292fd796fc1827c618388c244c007b1582a8ec1e9a77de"

  url "https://github.com/lxgw/SimXiZhi/releases/download/v#{version}/SimXiHei.ttf"
  name "LXGW SimXiHei"
  name "新晰黑体"
  homepage "https://github.com/lxgw/SimXiZhi"

  font "SimXiHei.ttf"

  # No zap stanza required
end
