cask "font-lxgw-simxihei" do
  version "1.100"
  sha256 "59f3cabf60df6a6f74155fe29ed621a5a8ac5f511bc667b069b656ec8c18e6d5"

  url "https://github.com/lxgw/SimXiZhi/releases/download/v#{version}/SimXiHei.ttf"
  name "LXGW SimXiHei"
  name "新晰黑体"
  homepage "https://github.com/lxgw/SimXiZhi"

  font "SimXiHei.ttf"

  # No zap stanza required
end
