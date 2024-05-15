cask "font-iosevka-ss18" do
  version "30.0.1"
  sha256 "fc38282f7ce78da38af7e5d4b3d0fa9dd3e8dbfe408236cc22dfe6eee80f7705"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/PkgTTC-IosevkaSS18-#{version}.zip"
  name "Iosevka SS18"
  desc "Sans-serif, slab-serif, monospace and quasi‑proportional typeface family"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS18-Bold.ttc"
  font "IosevkaSS18-ExtraBold.ttc"
  font "IosevkaSS18-ExtraLight.ttc"
  font "IosevkaSS18-Heavy.ttc"
  font "IosevkaSS18-Light.ttc"
  font "IosevkaSS18-Medium.ttc"
  font "IosevkaSS18-Regular.ttc"
  font "IosevkaSS18-SemiBold.ttc"
  font "IosevkaSS18-Thin.ttc"

  # No zap stanza required
end
