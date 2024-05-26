cask "font-iosevka-ss17" do
  version "30.1.1"
  sha256 "e2aaf3c920fa6c5a5723c1cbbddf310ed29a1fd6f16aa2833b5bc804d4412c03"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/PkgTTC-IosevkaSS17-#{version}.zip"
  name "Iosevka SS17"
  desc "Sans-serif, slab-serif, monospace and quasi‑proportional typeface family"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS17-Bold.ttc"
  font "IosevkaSS17-ExtraBold.ttc"
  font "IosevkaSS17-ExtraLight.ttc"
  font "IosevkaSS17-Heavy.ttc"
  font "IosevkaSS17-Light.ttc"
  font "IosevkaSS17-Medium.ttc"
  font "IosevkaSS17-Regular.ttc"
  font "IosevkaSS17-SemiBold.ttc"
  font "IosevkaSS17-Thin.ttc"

  # No zap stanza required
end
