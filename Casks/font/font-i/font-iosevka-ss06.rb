cask "font-iosevka-ss06" do
  version "30.1.0"
  sha256 "ad7afd294ed05157330e49694d4b63a6465abf508f0eaa9e077cf7d38cb3de36"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/PkgTTC-IosevkaSS06-#{version}.zip"
  name "Iosevka SS06"
  desc "Sans-serif, slab-serif, monospace and quasi‑proportional typeface family"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS06-Bold.ttc"
  font "IosevkaSS06-ExtraBold.ttc"
  font "IosevkaSS06-ExtraLight.ttc"
  font "IosevkaSS06-Heavy.ttc"
  font "IosevkaSS06-Light.ttc"
  font "IosevkaSS06-Medium.ttc"
  font "IosevkaSS06-Regular.ttc"
  font "IosevkaSS06-SemiBold.ttc"
  font "IosevkaSS06-Thin.ttc"

  # No zap stanza required
end
