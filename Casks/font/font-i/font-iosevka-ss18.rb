cask "font-iosevka-ss18" do
  version "30.3.0"
  sha256 "3387bb03afcbbc9880dbb6a1ff9242008c56c7113f5c9a8c6bad9bca7f5a8250"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/PkgTTC-IosevkaSS18-#{version}.zip"
  name "Iosevka SS18"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS18-Bold.ttc"
  font "IosevkaSS18-ExtraBold.ttc"
  font "IosevkaSS18-ExtraLight.ttc"
  font "IosevkaSS18-Heavy.ttc"
  font "IosevkaSS18-Light.ttc"
  font "IosevkaSS18-Medium.ttc"
  font "IosevkaSS18-Regular.ttc"
  font "IosevkaSS18-SemiBold.ttc"
  font "IosevkaSS18-Thin.ttc"

  # No zap stanza required
end
