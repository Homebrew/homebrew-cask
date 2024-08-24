cask "font-iosevka-etoile" do
  version "31.4.0"
  sha256 "f28bbec9d714f23a05cd22e353b19858d24a6b2d1a7b809b72a0d25fff67d3c9"

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
