cask "font-iosevka-ss09" do
  version "30.3.1"
  sha256 "d2b8bab649a8cd123f52b121427f1948a24bd5585bc09e4908f8e92ee6c49e92"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/PkgTTC-IosevkaSS09-#{version}.zip"
  name "Iosevka SS09"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS09-Bold.ttc"
  font "IosevkaSS09-ExtraBold.ttc"
  font "IosevkaSS09-ExtraLight.ttc"
  font "IosevkaSS09-Heavy.ttc"
  font "IosevkaSS09-Light.ttc"
  font "IosevkaSS09-Medium.ttc"
  font "IosevkaSS09-Regular.ttc"
  font "IosevkaSS09-SemiBold.ttc"
  font "IosevkaSS09-Thin.ttc"

  # No zap stanza required
end
