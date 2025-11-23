cask "font-iosevka-aile" do
  version "33.3.5"
  sha256 "fcc5aac4a6857801c206a2822b30ec30677e84dab40c24de64a3a308efb64d43"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaAile-#{version}.zip"
  name "Iosevka Aile"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaAile.ttc"

  # No zap stanza required
end
