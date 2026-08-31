cask "font-iosevka-ss07" do
  version "34.8.1"
  sha256 "b476b67206c5b2335734d2207fdca4a8a82ba0a29d251c9ffad333edbfec7d96"

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
