cask "font-iosevka-ss08" do
  version "33.2.5"
  sha256 "97b8040adcdbad64eb535807d02d40e29efa07115589d6941f49f8a996a764a9"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS08-#{version}.zip"
  name "Iosevka SS08"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS08.ttc"

  # No zap stanza required
end
