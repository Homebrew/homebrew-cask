cask "font-iosevka-curly" do
  version "33.2.4"
  sha256 "b2f1bd382d35478c9ec53f1a45fd5edce964ae749fd7d560fa5f4c2d3a6710a2"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaCurly-#{version}.zip"
  name "Iosevka Curly"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaCurly.ttc"

  # No zap stanza required
end
