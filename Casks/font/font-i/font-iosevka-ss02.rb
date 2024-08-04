cask "font-iosevka-ss02" do
  version "31.1.0"
  sha256 "6358c72a085ba86e7cfa2350eeb944f10ff5d6b5aca6cc6d771b0c2525a61ca1"

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
