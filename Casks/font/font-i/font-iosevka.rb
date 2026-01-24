cask "font-iosevka" do
  version "34.1.0"
  sha256 "a8cbe150856aef9b58ec8dd8a6cbc29b9b7db34d6ed466ba57347cd1d3537efe"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-Iosevka-#{version}.zip"
  name "Iosevka"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "Iosevka.ttc"

  # No zap stanza required
end
