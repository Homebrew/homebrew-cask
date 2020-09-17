cask "cookie" do
  version "6.1.5"
  sha256 "a9295873f93bcc9edd497ac6041ff5a5adcb3fc9079b8e15aaa0188927dba057"

  url "https://sweetpproductions.com/products/cookieapp/Cookie.dmg"
  appcast "https://sweetpproductions.com/products/cookieapp/appcast.xml"
  name "Cookie"
  desc "Protection from tracking and online profiling"
  homepage "https://sweetpproductions.com/"

  depends_on macos: ">= :mojave"

  app "Cookie.app"

  zap trash: [
    "~/Library/Application Scripts/com.sweetpproductions.Cookie5",
    "~/Library/Containers/com.sweetpproductions.Cookie5",
    "~/Library/Preferences/com.sweetpproductions.Cookie5.plist",
    "~/Library/Application Scripts/com.sweetpproductions.CookieApp",
    "~/Library/Containers/com.sweetpproductions.CookieApp",
    "~/Library/Preferences/com.sweetpproductions.CookieApp.plist",
  ]
end
