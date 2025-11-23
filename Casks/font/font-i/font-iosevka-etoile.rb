cask "font-iosevka-etoile" do
  version "33.3.5"
  sha256 "8ed780b5fabbf4aef445981bf7d497b5eae68e022e52e75e0559b3909feb00c5"

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
