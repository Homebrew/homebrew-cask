cask "font-iosevka-ss01" do
  version "31.8.0"
  sha256 "d6ce032db2d4c27972ee5e4c19bea5d0723f2a4245ad74fecf1c8a78a9af5b0b"

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
