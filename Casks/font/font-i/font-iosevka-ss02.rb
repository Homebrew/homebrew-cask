cask "font-iosevka-ss02" do
  version "34.6.2"
  sha256 "6e26dcdfb19e06d224e7a72018d6d2489e5094c379b2816373e08606d399b333"

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
