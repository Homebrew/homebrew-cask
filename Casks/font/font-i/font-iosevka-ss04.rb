cask "font-iosevka-ss04" do
  version "34.4.0"
  sha256 "41748b88afb71741815c2c5cf46f540655225c7722842333ac8a4de70cd75370"

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
