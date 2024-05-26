cask "font-iosevka-ss03" do
  version "30.1.1"
  sha256 "f24eae5a304ed32d404835f78a49a9b001fd296675f2ca6054c8ceaa4597875b"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/PkgTTC-IosevkaSS03-#{version}.zip"
  name "Iosevka SS03"
  desc "Sans-serif, slab-serif, monospace and quasi‑proportional typeface family"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS03-Bold.ttc"
  font "IosevkaSS03-ExtraBold.ttc"
  font "IosevkaSS03-ExtraLight.ttc"
  font "IosevkaSS03-Heavy.ttc"
  font "IosevkaSS03-Light.ttc"
  font "IosevkaSS03-Medium.ttc"
  font "IosevkaSS03-Regular.ttc"
  font "IosevkaSS03-SemiBold.ttc"
  font "IosevkaSS03-Thin.ttc"

  # No zap stanza required
end
