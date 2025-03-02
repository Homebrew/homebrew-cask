cask "font-iosevka-ss11" do
  version "33.0.1"
  sha256 "ab7190b88c6b212b4cf7775c5d4697051a190c827a1ab65dcff85db0b019707e"

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
