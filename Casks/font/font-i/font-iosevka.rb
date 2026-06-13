cask "font-iosevka" do
  version "34.6.2"
  sha256 "873a5fa3f1e362c19357cd8669ec4b395d978c1475c88f80d2b5d779f7682077"

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
