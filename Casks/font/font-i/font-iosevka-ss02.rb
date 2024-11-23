cask "font-iosevka-ss02" do
  version "32.1.0"
  sha256 "5260b525c3433c96906115fe0a09a0a0a7a9d74743ef2286b12ee01d501f2f83"

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
