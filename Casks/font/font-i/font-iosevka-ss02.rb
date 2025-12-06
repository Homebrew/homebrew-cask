cask "font-iosevka-ss02" do
  version "33.3.6"
  sha256 "f08c2488b6f288c6f2a3cb8668ca6906d0e4ea7f4d6e5c4ad2c79c73156cc717"

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
