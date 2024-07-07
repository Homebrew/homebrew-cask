cask "font-iosevka-ss14" do
  version "30.3.2"
  sha256 "39f36d8967b9a7e8f2717a5c694995c27e0b2ceb4d2bd1b8737a29ca867a1a21"

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
