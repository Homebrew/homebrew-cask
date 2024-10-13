cask "font-iosevka" do
  version "31.9.0"
  sha256 "d54b5c6ab35ed6affe7cfee48889c36ec4d92b42614f5d577865930bc1986fe8"

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
