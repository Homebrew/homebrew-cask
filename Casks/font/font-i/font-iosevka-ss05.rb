cask "font-iosevka-ss05" do
  version "30.3.2"
  sha256 "3ca381f173c63d83165be61e965817778d01c7095cb3cc2a95017c169f4dd92d"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/PkgTTC-IosevkaSS05-#{version}.zip"
  name "Iosevka SS05"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS05-Bold.ttc"
  font "IosevkaSS05-ExtraBold.ttc"
  font "IosevkaSS05-ExtraLight.ttc"
  font "IosevkaSS05-Heavy.ttc"
  font "IosevkaSS05-Light.ttc"
  font "IosevkaSS05-Medium.ttc"
  font "IosevkaSS05-Regular.ttc"
  font "IosevkaSS05-SemiBold.ttc"
  font "IosevkaSS05-Thin.ttc"

  # No zap stanza required
end
