cask "font-iosevka-ss02" do
  version "33.2.6"
  sha256 "52e275134c837b5e0cc59ccfb817c25a58a3ea0c6fed7eefafaa66d6ab94fef2"

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
