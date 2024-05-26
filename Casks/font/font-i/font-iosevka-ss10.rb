cask "font-iosevka-ss10" do
  version "30.1.1"
  sha256 "27c7a6f8a613733dc0cf77f7fe73b28ec810c4edfc059234531794bc1d151add"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/PkgTTC-IosevkaSS10-#{version}.zip"
  name "Iosevka SS10"
  desc "Sans-serif, slab-serif, monospace and quasi‑proportional typeface family"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS10-Bold.ttc"
  font "IosevkaSS10-ExtraBold.ttc"
  font "IosevkaSS10-ExtraLight.ttc"
  font "IosevkaSS10-Heavy.ttc"
  font "IosevkaSS10-Light.ttc"
  font "IosevkaSS10-Medium.ttc"
  font "IosevkaSS10-Regular.ttc"
  font "IosevkaSS10-SemiBold.ttc"
  font "IosevkaSS10-Thin.ttc"

  # No zap stanza required
end
