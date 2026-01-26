cask "font-lxgw-simxihei" do
  version "1.026.2"
  sha256 "87bcc6f474548b3d0221b7ced8150185edf0a7509f1e72d443cf42ac454c3535"

  url "https://github.com/lxgw/SimXiZhi/releases/download/v#{version}/SimXiHei.ttf"
  name "LXGW SimXiHei"
  name "新晰黑体"
  homepage "https://github.com/lxgw/SimXiZhi"

  font "SimXiHei.ttf"

  # No zap stanza required
end
