cask "font-iosevka-etoile" do
  version "33.3.2"
  sha256 "6a54bbcf8d51d9ae3d0650fd22b89cca0f59604320064eb418bd929d7ee3acce"

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
