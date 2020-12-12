cask "magicprefs" do
  version "2.4.3,83"
  sha256 :no_check

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
