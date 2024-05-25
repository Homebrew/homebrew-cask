cask "font-iosevka-ss07" do
  version "30.1.0"
  sha256 "d722221f9e4612efc746d23c55a7886d2a17b08c525bdce1454c198970fc332f"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/PkgTTC-IosevkaSS07-#{version}.zip"
  name "Iosevka SS07"
  desc "Sans-serif, slab-serif, monospace and quasi‑proportional typeface family"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS07-Bold.ttc"
  font "IosevkaSS07-ExtraBold.ttc"
  font "IosevkaSS07-ExtraLight.ttc"
  font "IosevkaSS07-Heavy.ttc"
  font "IosevkaSS07-Light.ttc"
  font "IosevkaSS07-Medium.ttc"
  font "IosevkaSS07-Regular.ttc"
  font "IosevkaSS07-SemiBold.ttc"
  font "IosevkaSS07-Thin.ttc"

  # No zap stanza required
end
