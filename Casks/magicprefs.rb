cask "magicprefs" do
  version "2.4.3,83"
  sha256 :no_check

  url "http://magicprefs.com/MagicPrefs.app.zip"
  name "MagicPrefs"
  homepage "http://magicprefs.com/"

  livecheck do
    url "http://magicprefs.com/appcast.xml"
    strategy :sparkle
  end

  app "MagicPrefs.app"

  zap trash: [
    "~/Library/Preferences/com.vladalexa.MagicPrefs.MagicPrefsPlugins.plist",
    "~/Library/Preferences/com.vladalexa.MagicPrefs.plist",
  ]
end
