cask "font-iosevka-ss08" do
  version "31.0.0"
  sha256 "b54fc833d488aa21a94d5bc063f696d3a89d773f4362fa4dfd4b7092397ee38f"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/PkgTTC-IosevkaSS08-#{version}.zip"
  name "Iosevka SS08"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS08-Bold.ttc"
  font "IosevkaSS08-ExtraBold.ttc"
  font "IosevkaSS08-ExtraLight.ttc"
  font "IosevkaSS08-Heavy.ttc"
  font "IosevkaSS08-Light.ttc"
  font "IosevkaSS08-Medium.ttc"
  font "IosevkaSS08-Regular.ttc"
  font "IosevkaSS08-SemiBold.ttc"
  font "IosevkaSS08-Thin.ttc"

  # No zap stanza required
end
