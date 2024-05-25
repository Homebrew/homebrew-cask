cask "font-iosevka-ss14" do
  version "30.1.0"
  sha256 "f25f3b16653e805eaeb25705f244ebc54034dce67c6393260d52008487a02a87"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/PkgTTC-IosevkaSS14-#{version}.zip"
  name "Iosevka SS14"
  desc "Sans-serif, slab-serif, monospace and quasi‑proportional typeface family"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS14-Bold.ttc"
  font "IosevkaSS14-ExtraBold.ttc"
  font "IosevkaSS14-ExtraLight.ttc"
  font "IosevkaSS14-Heavy.ttc"
  font "IosevkaSS14-Light.ttc"
  font "IosevkaSS14-Medium.ttc"
  font "IosevkaSS14-Regular.ttc"
  font "IosevkaSS14-SemiBold.ttc"
  font "IosevkaSS14-Thin.ttc"

  # No zap stanza required
end
