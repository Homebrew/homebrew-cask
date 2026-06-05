cask "font-iosevka-ss11" do
  version "34.6.1"
  sha256 "e4b7904be7c13715057327125309fe02b3cf0d96658c2b66e5726d276a2877ae"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS11-#{version}.zip"
  name "Iosevka SS11"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS11.ttc"

  # No zap stanza required
end
