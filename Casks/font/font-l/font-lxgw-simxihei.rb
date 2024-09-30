cask "font-lxgw-simxihei" do
  version "1.007"
  sha256 "f582cee41b6187c8c6755258ba688c0356029965cf789d84f02e9a651cd0e89e"

  url "https://github.com/lxgw/SimXiZhi/releases/download/v#{version}/SimXiHei.ttf"
  name "LXGW SimXiHei"
  name "新晰黑体"
  homepage "https://github.com/lxgw/SimXiZhi"

  font "SimXiHei.ttf"

  # No zap stanza required
end
