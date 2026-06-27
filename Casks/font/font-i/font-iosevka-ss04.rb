cask "font-iosevka-ss04" do
  version "34.7.0"
  sha256 "d3917bec91a157186ab06779cd2afde496c00af7aa382dda2e4204b9cc22e582"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS04-#{version}.zip"
  name "Iosevka SS04"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS04.ttc"

  # No zap stanza required
end
