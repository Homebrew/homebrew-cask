cask "font-iosevka-ss06" do
  version "32.2.1"
  sha256 "889527a81d8e8b378d9f3dff8fd354fca737c08bf6155a571fd033d3face804f"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS06-#{version}.zip"
  name "Iosevka SS06"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS06.ttc"

  # No zap stanza required
end
