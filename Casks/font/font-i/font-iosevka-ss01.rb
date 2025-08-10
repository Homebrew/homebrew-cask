cask "font-iosevka-ss01" do
  version "33.2.8"
  sha256 "d63c71e0ff7fd1b67f27fd5703b005cd7a1a6b50eccac9df3434654fa9f3986e"

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
