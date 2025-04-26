cask "font-iosevka-etoile" do
  version "33.2.2"
  sha256 "377eb05fbaff7111f0a36cee3c292368a89c01fd93af1606496289a6adec7d63"

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
