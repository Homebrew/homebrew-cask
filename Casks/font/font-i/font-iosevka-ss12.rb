cask "font-iosevka-ss12" do
  version "30.1.2"
  sha256 "728fbb3a658bd0da0b64778da9346f179eff7731e4fc2dac501ad9f3861d9863"

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
