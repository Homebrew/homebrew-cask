cask "mailplane" do
  version "4.3,4846"
  sha256 "467fbcc37bb7523e8db6a4d9693374efa1136f6f04a775bb63fc9865d1d6fd1b"

  url "https://update.mailplaneapp.com/builds/Mailplane_#{version.major}_#{version.after_comma}.tbz"
  appcast "https://update.mailplaneapp.com/appcast.php?rqsr=1&osVersion=10.14.1&appVersion=#{version.after_comma}&shortVersionString=#{version.before_comma}"
  name "Mailplane"
  homepage "https://mailplaneapp.com/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Mailplane.app"

  zap trash: "~/Library/Preferences/com.mailplaneapp.Mailplane.plist"
end
