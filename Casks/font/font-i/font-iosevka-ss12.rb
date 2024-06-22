cask "font-iosevka-ss12" do
  version "30.3.0"
  sha256 "fdeb5b14c6aaaa6c05152cc0721245624bb994cd21a8d1baa767d8a0b6baf104"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/PkgTTC-IosevkaSS12-#{version}.zip"
  name "Iosevka SS12"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS12-Bold.ttc"
  font "IosevkaSS12-ExtraBold.ttc"
  font "IosevkaSS12-ExtraLight.ttc"
  font "IosevkaSS12-Heavy.ttc"
  font "IosevkaSS12-Light.ttc"
  font "IosevkaSS12-Medium.ttc"
  font "IosevkaSS12-Regular.ttc"
  font "IosevkaSS12-SemiBold.ttc"
  font "IosevkaSS12-Thin.ttc"

  # No zap stanza required
end
