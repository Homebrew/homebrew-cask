cask "font-iosevka-etoile" do
  version "31.5.0"
  sha256 "ac1f2d44ae47b12ec3bd4fc1242f1facd376ec40ec20ea5f5d3b86c05650ce04"

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
