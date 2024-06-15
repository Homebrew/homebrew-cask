cask "font-iosevka-ss03" do
  version "30.2.0"
  sha256 "16e6ae607dc4bf33b1d13ff8c3cbde421368fd8c0219c50598a3ebc856f967cd"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/PkgTTC-IosevkaSS03-#{version}.zip"
  name "Iosevka SS03"
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
