cask "font-iosevka-ss02" do
  version "33.3.0"
  sha256 "bca8b166cdc31cec1ffaee76dc863e0fef3011cd80d19fde16493af7cbae0362"

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
