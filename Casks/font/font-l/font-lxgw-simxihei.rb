cask "font-lxgw-simxihei" do
  version "1.026"
  sha256 "94b0d72e068b7885ea8ac40224e0e40500f3c7e05d0979f3ed4b303089d0b144"

  url "https://github.com/lxgw/SimXiZhi/releases/download/v#{version}/SimXiHei.ttf"
  name "LXGW SimXiHei"
  name "新晰黑体"
  homepage "https://github.com/lxgw/SimXiZhi"

  font "SimXiHei.ttf"

  # No zap stanza required
end
