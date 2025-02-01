cask "font-iosevka-ss16" do
  version "32.5.0"
  sha256 "8c115fcd44950134b9b85a9211459140e535a25956e0acc90bddf4f4656fb864"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS16-#{version}.zip"
  name "Iosevka SS16"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS16.ttc"

  # No zap stanza required
end
