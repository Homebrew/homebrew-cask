cask "font-iosevka-etoile" do
  version "34.1.0"
  sha256 "c2d9f83fd539a3ca77e5d6a98bbc9f8911c06b1b403fd6f9ca394a2a23716f97"

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
