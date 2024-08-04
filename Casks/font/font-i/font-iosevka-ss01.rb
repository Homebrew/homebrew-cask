cask "font-iosevka-ss01" do
  version "31.1.0"
  sha256 "a9c4e60d1cb5d3998c4f496b91ff8e4a97fdb9210a1957a95ba954dcbdafb6de"

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
