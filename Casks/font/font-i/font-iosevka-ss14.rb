cask "font-iosevka-ss14" do
  version "30.1.2"
  sha256 "ff14e30153966827273af09fa23ac29eadac23c50db44837bb9ceb7afbee81a9"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/PkgTTC-IosevkaSS14-#{version}.zip"
  name "Iosevka SS14"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS14-Bold.ttc"
  font "IosevkaSS14-ExtraBold.ttc"
  font "IosevkaSS14-ExtraLight.ttc"
  font "IosevkaSS14-Heavy.ttc"
  font "IosevkaSS14-Light.ttc"
  font "IosevkaSS14-Medium.ttc"
  font "IosevkaSS14-Regular.ttc"
  font "IosevkaSS14-SemiBold.ttc"
  font "IosevkaSS14-Thin.ttc"

  # No zap stanza required
end
