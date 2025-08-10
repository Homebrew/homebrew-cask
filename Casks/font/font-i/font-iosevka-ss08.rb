cask "font-iosevka-ss08" do
  version "33.2.8"
  sha256 "5ab8a207745d826843951e1595903a7dc4274b35643265186071f0e6b0d9a76c"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS08-#{version}.zip"
  name "Iosevka SS08"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS08.ttc"

  # No zap stanza required
end
