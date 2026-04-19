cask "font-iosevka-ss14" do
  version "34.4.0"
  sha256 "ca6fdf14ae0d375234fdc2922016fb6ac1e6cccbdd1d938e043da8e151f3101e"

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
