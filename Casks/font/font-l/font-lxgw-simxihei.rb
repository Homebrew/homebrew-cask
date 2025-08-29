cask "font-lxgw-simxihei" do
  version "1.023.6"
  sha256 "c7ac27b63aa14f42e1b8ac4cb44f92de2d50a5087ab739ae988d52c918e185dd"

  url "https://github.com/lxgw/SimXiZhi/releases/download/v#{version}/SimXiHei.ttf"
  name "LXGW SimXiHei"
  name "新晰黑体"
  homepage "https://github.com/lxgw/SimXiZhi"

  font "SimXiHei.ttf"

  # No zap stanza required
end
