cask "font-iosevka-ss01" do
  version "32.3.0"
  sha256 "1240f66879d4d624cc24da0430c37f20812f3e6d946b78fc0dd002a6fcf098cf"

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
