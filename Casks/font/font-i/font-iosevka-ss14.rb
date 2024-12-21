cask "font-iosevka-ss14" do
  version "32.3.0"
  sha256 "490e343fa2e18138d9318678a21f79c1cb8dd1cd2f4df86024d02e6969990d77"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS14-#{version}.zip"
  name "Iosevka SS14"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS14.ttc"

  # No zap stanza required
end
