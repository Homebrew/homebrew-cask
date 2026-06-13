cask "font-iosevka-ss01" do
  version "34.6.2"
  sha256 "c438cdf52e70824bd5d93fcb43ce2d3abb08049ab0e7bd556d511fba71626843"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS01-#{version}.zip"
  name "Iosevka SS01"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS01.ttc"

  # No zap stanza required
end
