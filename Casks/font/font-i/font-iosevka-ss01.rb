cask "font-iosevka-ss01" do
  version "30.1.1"
  sha256 "1e61ea0987bc59dba26a21cdb8adad5c89a66867110bcb71d7f15ac0d0ac1f62"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/PkgTTC-IosevkaSS01-#{version}.zip"
  name "Iosevka SS01"
  desc "Sans-serif, slab-serif, monospace and quasi‑proportional typeface family"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS01-Bold.ttc"
  font "IosevkaSS01-ExtraBold.ttc"
  font "IosevkaSS01-ExtraLight.ttc"
  font "IosevkaSS01-Heavy.ttc"
  font "IosevkaSS01-Light.ttc"
  font "IosevkaSS01-Medium.ttc"
  font "IosevkaSS01-Regular.ttc"
  font "IosevkaSS01-SemiBold.ttc"
  font "IosevkaSS01-Thin.ttc"

  # No zap stanza required
end
