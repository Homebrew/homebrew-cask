cask "font-iosevka-ss01" do
  version "34.1.0"
  sha256 "bda8738e4b1969dc67f92afe0feacfc03909c18b1a1e9a63b00a3d13b0188449"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS01-#{version}.zip"
  name "Iosevka SS01"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS01.ttc"

  # No zap stanza required
end
