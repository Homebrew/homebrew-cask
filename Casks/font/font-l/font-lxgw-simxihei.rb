cask "font-lxgw-simxihei" do
  version "1.103"
  sha256 "d3b7a4cb8552ddddfe23e5379c19f9b74f2ca63c238b7ef6882208bfde3cc1e3"

  url "https://github.com/lxgw/SimXiZhi/releases/download/v#{version}/SimXiHei.ttf"
  name "LXGW SimXiHei"
  name "新晰黑体"
  homepage "https://github.com/lxgw/SimXiZhi"

  font "SimXiHei.ttf"

  # No zap stanza required
end
