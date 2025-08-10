cask "font-iosevka-ss03" do
  version "33.2.8"
  sha256 "c055577375834de812243214a090a1c5048c1261542e3672ceb2148c1cfc4a7a"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS03-#{version}.zip"
  name "Iosevka SS03"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS03.ttc"

  # No zap stanza required
end
