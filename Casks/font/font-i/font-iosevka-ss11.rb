cask "font-iosevka-ss11" do
  version "30.3.0"
  sha256 "7ab931408b65dbf95b8df19b527dc60bbd95c321c9496cb9902bfc0be8163c8a"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/PkgTTC-IosevkaSS11-#{version}.zip"
  name "Iosevka SS11"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS11-Bold.ttc"
  font "IosevkaSS11-ExtraBold.ttc"
  font "IosevkaSS11-ExtraLight.ttc"
  font "IosevkaSS11-Heavy.ttc"
  font "IosevkaSS11-Light.ttc"
  font "IosevkaSS11-Medium.ttc"
  font "IosevkaSS11-Regular.ttc"
  font "IosevkaSS11-SemiBold.ttc"
  font "IosevkaSS11-Thin.ttc"

  # No zap stanza required
end
