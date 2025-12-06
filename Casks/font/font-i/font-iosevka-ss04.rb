cask "font-iosevka-ss04" do
  version "33.3.6"
  sha256 "9196bb8e4e433087c191580a32e73b4c9abf4781711a2035af8195aa67f29065"

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
