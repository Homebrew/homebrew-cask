cask "font-iosevka-ss06" do
  version "33.3.0"
  sha256 "80ea9e79562ca18a6b784ed5c10438aa58f10631c3d4da4eb4efa7b04be5a1aa"

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
