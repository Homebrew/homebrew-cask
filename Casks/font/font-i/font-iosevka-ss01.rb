cask "font-iosevka-ss01" do
  version "33.3.4"
  sha256 "bb628a0fa921a000bd84f76595417fa6d5c90a41f9ed5a548e09dd47c6da3f39"

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
