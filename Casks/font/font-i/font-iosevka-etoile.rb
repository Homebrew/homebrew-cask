cask "font-iosevka-etoile" do
  version "34.5.0"
  sha256 "025f211a646ad4c6b523a6fc287a34d2efd709c4f073aae2ac12e0e17d9224f0"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaEtoile-#{version}.zip"
  name "Iosevka Etoile"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaEtoile.ttc"

  # No zap stanza required
end
