cask "font-lxgw-simxihei" do
  version "1.008.2"
  sha256 "52861de20bfd6b31ded4a0792951b3aed8fbdf655edc35ba550541fae7d67978"

  url "https://github.com/lxgw/SimXiZhi/releases/download/v#{version}/SimXiHei.ttf"
  name "LXGW SimXiHei"
  name "新晰黑体"
  homepage "https://github.com/lxgw/SimXiZhi"

  font "SimXiHei.ttf"

  # No zap stanza required
end
