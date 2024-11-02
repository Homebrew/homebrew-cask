cask "font-iosevka-ss02" do
  version "32.0.0"
  sha256 "def46a18e9ed277354291c36c9a7657bf12dcefcf407c6053000603d9a7a0e03"

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
