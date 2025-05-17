cask "font-iosevka-etoile" do
  version "33.2.3"
  sha256 "ebeb21742efea870980e5fbe3ce152cf1ab8f821b4175ffba8dc53874a71cbdb"

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
