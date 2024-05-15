cask "font-iosevka-slab" do
  version "30.0.1"
  sha256 "9e0a0ff08ca498d6a25d7a799ca9d8f523e8f71733b4bec618c2fc4f6c1bfcf9"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/PkgTTC-IosevkaSlab-#{version}.zip"
  name "Iosevka Slab"
  desc "Sans-serif, slab-serif, monospace and quasi‑proportional typeface family"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSlab-Bold.ttc"
  font "IosevkaSlab-ExtraBold.ttc"
  font "IosevkaSlab-ExtraLight.ttc"
  font "IosevkaSlab-Heavy.ttc"
  font "IosevkaSlab-Light.ttc"
  font "IosevkaSlab-Medium.ttc"
  font "IosevkaSlab-Regular.ttc"
  font "IosevkaSlab-SemiBold.ttc"
  font "IosevkaSlab-Thin.ttc"

  # No zap stanza required
end
