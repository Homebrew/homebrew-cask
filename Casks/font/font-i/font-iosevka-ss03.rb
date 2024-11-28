cask "font-iosevka-ss03" do
  version "32.2.0"
  sha256 "ed1929858bc94f75f0a76bededf73fa497d7509c155457b4da027e20b065f304"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS03-#{version}.zip"
  name "Iosevka SS03"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS03.ttc"

  # No zap stanza required
end
