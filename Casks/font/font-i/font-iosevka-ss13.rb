cask "font-iosevka-ss13" do
  version "30.3.1"
  sha256 "25550fb8df038f930d27c4c8a21605dee8eea0c039e4718ef4f1916834b3fb21"

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
