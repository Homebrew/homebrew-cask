cask "font-iosevka-ss13" do
  version "33.2.4"
  sha256 "de7c892cb2f5dd248c4d452d43be9ec3bc8d59a0e4d578d6ddb533e23a592e37"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS13-#{version}.zip"
  name "Iosevka SS13"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS13.ttc"

  # No zap stanza required
end
