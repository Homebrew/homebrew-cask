cask "font-iosevka-ss02" do
  version "33.2.3"
  sha256 "83511e20ebf7bde7a461dbaffda5819026edaf9d3657bfcc8dbeea4c0405cfff"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS02-#{version}.zip"
  name "Iosevka SS02"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS02.ttc"

  # No zap stanza required
end
