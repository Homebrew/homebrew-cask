cask "font-iosevka-ss14" do
  version "34.6.3"
  sha256 "50ac7bf327aba3e96604f49382cc98d459d14fabe0b4e260de168dbb8d1a1d3f"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS14-#{version}.zip"
  name "Iosevka SS14"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS14.ttc"

  # No zap stanza required
end
