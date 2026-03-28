cask "font-iosevka-ss04" do
  version "34.3.0"
  sha256 "2432c59aa293cf1b428809eb331429056ee2dbf58c17556e20fcb4d0706422c0"

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
