cask "font-iosevka-ss02" do
  version "32.3.0"
  sha256 "4dfcd26d898d1ed0666db070ebbbea4443ac6388fc137a7cf393335d9eeadedc"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS02-#{version}.zip"
  name "Iosevka SS02"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS02.ttc"

  # No zap stanza required
end
