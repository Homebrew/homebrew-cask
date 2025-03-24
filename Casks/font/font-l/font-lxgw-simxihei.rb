cask "font-lxgw-simxihei" do
  version "1.020"
  sha256 "9c290de6f297dce1d11f35d716e3938e72a0963c4b6115e565f7c9decb14cd5f"

  url "https://github.com/lxgw/SimXiZhi/releases/download/v#{version}/SimXiHei.ttf"
  name "LXGW SimXiHei"
  name "新晰黑体"
  homepage "https://github.com/lxgw/SimXiZhi"

  font "SimXiHei.ttf"

  # No zap stanza required
end
