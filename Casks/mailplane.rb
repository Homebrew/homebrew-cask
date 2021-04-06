cask "mailplane" do
  version "4.3.1,4859"
  sha256 "c76e71b0b6db97dacd80a5421d1a5dc647504c16062db934b45ff5708fbbbd42"

  url "https://builds.mailplaneapp.com/Mailplane_#{version.major}_#{version.after_comma}.tbz"
  appcast "https://update.mailplaneapp.com/appcast.php?rqsr=1&osVersion=10.14.1&appVersion=#{version.after_comma}&shortVersionString=#{version.before_comma}"
  name "Mailplane"
  homepage "https://mailplaneapp.com/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Mailplane.app"

  zap trash: "~/Library/Preferences/com.mailplaneapp.Mailplane.plist"
end
