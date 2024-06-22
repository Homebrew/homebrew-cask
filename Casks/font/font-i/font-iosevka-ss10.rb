cask "font-iosevka-ss10" do
  version "30.3.0"
  sha256 "3ebafddbbce2a826af26e9f82b18736d8457ee0854dc6d10cf0dc431bab2056e"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/PkgTTC-IosevkaSS10-#{version}.zip"
  name "Iosevka SS10"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS10-Bold.ttc"
  font "IosevkaSS10-ExtraBold.ttc"
  font "IosevkaSS10-ExtraLight.ttc"
  font "IosevkaSS10-Heavy.ttc"
  font "IosevkaSS10-Light.ttc"
  font "IosevkaSS10-Medium.ttc"
  font "IosevkaSS10-Regular.ttc"
  font "IosevkaSS10-SemiBold.ttc"
  font "IosevkaSS10-Thin.ttc"

  # No zap stanza required
end
