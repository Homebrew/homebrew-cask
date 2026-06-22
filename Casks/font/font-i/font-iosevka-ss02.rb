cask "font-iosevka-ss02" do
  version "34.6.3"
  sha256 "9d17aa8134c7801e8a9c3fb8a098596834bc87b7834533811fae3d738990b220"

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
