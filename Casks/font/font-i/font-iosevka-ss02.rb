cask "font-iosevka-ss02" do
  version "32.5.0"
  sha256 "c480d0e9b207a852686180eecd2d2e5458c897d7d5bfe784a65b4f9b82671185"

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
