cask "font-iosevka-ss10" do
  version "33.2.4"
  sha256 "c4d590fb6463b4702b7a5274274202f07019b254a86584826e130b2ea4c77de3"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS10-#{version}.zip"
  name "Iosevka SS10"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS10.ttc"

  # No zap stanza required
end
