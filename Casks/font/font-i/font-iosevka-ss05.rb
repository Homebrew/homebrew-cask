cask "font-iosevka-ss05" do
  version "34.9.0"
  sha256 "98e40f127d06a9560353e08207c5ec976fc6bdcda249249d3fe179f42457f0e5"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS05-#{version}.zip"
  name "Iosevka SS05"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS05.ttc"

  # No zap stanza required
end
