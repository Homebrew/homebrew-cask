cask "font-iosevka-ss06" do
  version "33.3.6"
  sha256 "b41a37dbe27883e44cd1fcbd1664c12f03e6fc2d6aa5119aa74f76f7569e76a5"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS06-#{version}.zip"
  name "Iosevka SS06"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS06.ttc"

  # No zap stanza required
end
