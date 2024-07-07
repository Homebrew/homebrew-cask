cask "font-iosevka-ss13" do
  version "30.3.2"
  sha256 "4f9d9fb7d8e616a1212f04f119dfce2c3f15bf51c6979cb4f7dd56fd35a239d7"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/PkgTTC-IosevkaSS13-#{version}.zip"
  name "Iosevka SS13"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS13-Bold.ttc"
  font "IosevkaSS13-ExtraBold.ttc"
  font "IosevkaSS13-ExtraLight.ttc"
  font "IosevkaSS13-Heavy.ttc"
  font "IosevkaSS13-Light.ttc"
  font "IosevkaSS13-Medium.ttc"
  font "IosevkaSS13-Regular.ttc"
  font "IosevkaSS13-SemiBold.ttc"
  font "IosevkaSS13-Thin.ttc"

  # No zap stanza required
end
