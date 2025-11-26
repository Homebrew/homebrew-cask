cask "font-iosevka-ss02" do
  version "33.3.5"
  sha256 "44e01d5a233e7146891be49709c3c3846734d8183ce70e06eeb71eed99723665"

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
