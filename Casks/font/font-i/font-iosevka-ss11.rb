cask "font-iosevka-ss11" do
  version "30.3.2"
  sha256 "5420f955486a11f3350ce5df58e528d8a5564619b59adbe244893a7480493f11"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/PkgTTC-IosevkaSS11-#{version}.zip"
  name "Iosevka SS11"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS11-Bold.ttc"
  font "IosevkaSS11-ExtraBold.ttc"
  font "IosevkaSS11-ExtraLight.ttc"
  font "IosevkaSS11-Heavy.ttc"
  font "IosevkaSS11-Light.ttc"
  font "IosevkaSS11-Medium.ttc"
  font "IosevkaSS11-Regular.ttc"
  font "IosevkaSS11-SemiBold.ttc"
  font "IosevkaSS11-Thin.ttc"

  # No zap stanza required
end
