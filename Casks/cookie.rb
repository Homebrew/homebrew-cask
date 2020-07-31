cask "cookie" do
  version "6.1"
  sha256 "5d24d56c776f536f51dca9e1a81f234ea7fd943fba64de9d5c296dcd1a3f91e1"

  url "https://sweetpproductions.com/products/cookieapp/Cookie.dmg"
  appcast "https://sweetpproductions.com/products/cookieapp/appcast.xml"
  name "Cookie"
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
