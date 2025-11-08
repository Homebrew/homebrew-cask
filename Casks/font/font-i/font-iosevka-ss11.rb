cask "font-iosevka-ss11" do
  version "33.3.4"
  sha256 "2fdabc1e40746cd2539b16fbddeede5c024742bb62159752a26840302b03d265"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS11-#{version}.zip"
  name "Iosevka SS11"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS11.ttc"

  # No zap stanza required
end
