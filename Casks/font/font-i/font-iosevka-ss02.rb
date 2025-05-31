cask "font-iosevka-ss02" do
  version "33.2.4"
  sha256 "37ac4155dae08e9eb2a507d0bf416dc534a24f61381090225d6b6328c7c1dc16"

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
