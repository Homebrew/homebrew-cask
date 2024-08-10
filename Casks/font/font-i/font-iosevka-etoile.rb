cask "font-iosevka-etoile" do
  version "31.2.0"
  sha256 "a6d018792bd1bb9737f2936024e6ea59d0dcd3dbf628fbaf66ba264615c3bb9d"

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
