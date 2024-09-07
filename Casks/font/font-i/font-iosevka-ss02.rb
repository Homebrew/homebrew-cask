cask "font-iosevka-ss02" do
  version "31.6.0"
  sha256 "28337e83662a42cdd7a410aa63c5de1b337506763bd3ed97dbe81eeb15e4fef6"

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
