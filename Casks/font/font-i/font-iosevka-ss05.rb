cask "font-iosevka-ss05" do
  version "30.0.1"
  sha256 "1f90d2fd9cfec8e38e930c10ad9da279eec346dd8974873b5bf406e8e0732dbf"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/PkgTTC-IosevkaSS05-#{version}.zip"
  name "Iosevka SS05"
  desc "Sans-serif, slab-serif, monospace and quasi‑proportional typeface family"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS05-Bold.ttc"
  font "IosevkaSS05-ExtraBold.ttc"
  font "IosevkaSS05-ExtraLight.ttc"
  font "IosevkaSS05-Heavy.ttc"
  font "IosevkaSS05-Light.ttc"
  font "IosevkaSS05-Medium.ttc"
  font "IosevkaSS05-Regular.ttc"
  font "IosevkaSS05-SemiBold.ttc"
  font "IosevkaSS05-Thin.ttc"

  # No zap stanza required
end
