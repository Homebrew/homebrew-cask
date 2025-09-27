cask "font-iosevka-etoile" do
  version "33.3.1"
  sha256 "ec5f0e3a55e03e01d07aa3d31f1488e480e8e14b09a8770146f1849780c21ffe"

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
