cask "font-iosevka-ss02" do
  version "33.0.1"
  sha256 "2efb66d2a076022acaf4cb506a5a80419864c2598bf420d9b7c7f3ba2d7e4a26"

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
