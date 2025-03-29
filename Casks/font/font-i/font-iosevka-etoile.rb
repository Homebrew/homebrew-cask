cask "font-iosevka-etoile" do
  version "33.2.0"
  sha256 "5a0c0de995df36aa0b3894ff18bfc131ec9ea55a1c8d04f58b5e607c093aa598"

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
