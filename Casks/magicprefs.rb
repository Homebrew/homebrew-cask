cask "magicprefs" do
  version "2.4.3"
  sha256 "59b993388787a80c831d4824766b646d0d65bd2e7c4cd1f9ae7d2b875400f49d"

  url "http://magicprefs.com/MagicPrefs.app.zip"
  appcast "http://magicprefs.com/appcast.xml"
  name "MagicPrefs"
  homepage "http://magicprefs.com/"

  app "MagicPrefs.app"

  zap trash: [
    "~/Library/Preferences/com.vladalexa.MagicPrefs.MagicPrefsPlugins.plist",
    "~/Library/Preferences/com.vladalexa.MagicPrefs.plist",
  ]
end
