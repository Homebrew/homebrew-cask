cask "font-iosevka-ss01" do
  version "34.6.0"
  sha256 "d5efb402fcfb8055bbcbad516e6c3192ac7513fb8ab725891cb04debc153954d"

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
