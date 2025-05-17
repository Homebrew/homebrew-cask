cask "font-iosevka-ss11" do
  version "33.2.3"
  sha256 "3fec30d881eaa7e72534ed2712c3235693cbbcae72945719da9538602de87b09"

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
