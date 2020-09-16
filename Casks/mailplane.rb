cask "mailplane" do
  version "4.2.6,4828"
  sha256 "77408c1332758a7e03e2e0c32d1d2097c724f10e9ae56ec8270508736f00a41c"

  url "https://update.mailplaneapp.com/builds/Mailplane_#{version.major}_#{version.after_comma}.tbz"
  appcast "https://update.mailplaneapp.com/appcast.php?rqsr=1&osVersion=10.14.1&appVersion=#{version.after_comma}&shortVersionString=#{version.before_comma}"
  name "Mailplane"
  homepage "https://mailplaneapp.com/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Mailplane.app"

  zap trash: "~/Library/Preferences/com.mailplaneapp.Mailplane.plist"
end
