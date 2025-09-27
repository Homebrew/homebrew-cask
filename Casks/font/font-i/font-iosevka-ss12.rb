cask "font-iosevka-ss12" do
  version "33.3.1"
  sha256 "f1022c65488ab764befc231ef581432c6243d3bd873591903c75e12c913fe57b"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS12-#{version}.zip"
  name "Iosevka SS12"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS12.ttc"

  # No zap stanza required
end
