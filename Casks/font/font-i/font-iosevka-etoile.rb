cask "font-iosevka-etoile" do
  version "31.7.0"
  sha256 "d8e850b630cfdcf7235e2dcaf9d4ebdf5a8001839b02e6b12a12b0a0f631f847"

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
