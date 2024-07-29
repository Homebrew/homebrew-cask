cask "font-iosevka-ss16" do
  version "31.0.0"
  sha256 "95d0fed41c6582cae0a10711fa3328c6227ec202873efa005e1f8bececb14b65"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/PkgTTC-IosevkaSS16-#{version}.zip"
  name "Iosevka SS16"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS16-Bold.ttc"
  font "IosevkaSS16-ExtraBold.ttc"
  font "IosevkaSS16-ExtraLight.ttc"
  font "IosevkaSS16-Heavy.ttc"
  font "IosevkaSS16-Light.ttc"
  font "IosevkaSS16-Medium.ttc"
  font "IosevkaSS16-Regular.ttc"
  font "IosevkaSS16-SemiBold.ttc"
  font "IosevkaSS16-Thin.ttc"

  # No zap stanza required
end
