cask "font-iosevka" do
  version "31.0.0"
  sha256 "e24c94ed5b4caa28193188458dfb5c504dc711c890bf67ab8cc1c8db5859fbce"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/PkgTTC-Iosevka-#{version}.zip"
  name "Iosevka"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "Iosevka-Bold.ttc"
  font "Iosevka-ExtraBold.ttc"
  font "Iosevka-ExtraLight.ttc"
  font "Iosevka-Heavy.ttc"
  font "Iosevka-Light.ttc"
  font "Iosevka-Medium.ttc"
  font "Iosevka-Regular.ttc"
  font "Iosevka-SemiBold.ttc"
  font "Iosevka-Thin.ttc"

  # No zap stanza required
end
