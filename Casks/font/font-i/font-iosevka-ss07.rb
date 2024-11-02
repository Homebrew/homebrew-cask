cask "font-iosevka-ss07" do
  version "32.0.0"
  sha256 "3ad16a33ca5305569f7314079bde1fba903129882ec40dcdf5e6f15ae29cd6dc"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS07-#{version}.zip"
  name "Iosevka SS07"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS07.ttc"

  # No zap stanza required
end
