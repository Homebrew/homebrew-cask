cask "font-iosevka-ss03" do
  version "33.2.4"
  sha256 "095ea3f5ec83c6b2f705c7ee0b3a69ac0894751061734104e663eeb6fa4c4bdb"

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
