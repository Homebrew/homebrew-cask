cask "font-iosevka-ss04" do
  version "30.0.1"
  sha256 "b8a360cdf997a6cdf1e9e282e229ce54cbec0ecfae8e8a1074fbc10a15b31725"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/PkgTTC-IosevkaSS04-#{version}.zip"
  name "Iosevka SS04"
  desc "Sans-serif, slab-serif, monospace and quasi‑proportional typeface family"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS04-Bold.ttc"
  font "IosevkaSS04-ExtraBold.ttc"
  font "IosevkaSS04-ExtraLight.ttc"
  font "IosevkaSS04-Heavy.ttc"
  font "IosevkaSS04-Light.ttc"
  font "IosevkaSS04-Medium.ttc"
  font "IosevkaSS04-Regular.ttc"
  font "IosevkaSS04-SemiBold.ttc"
  font "IosevkaSS04-Thin.ttc"

  # No zap stanza required
end
