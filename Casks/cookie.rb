cask "cookie" do
  version "6.1.3"
  sha256 "b25cad9e9b29b1164992d8a512e17ef3291f2bf50a171e071f678055f1148c82"

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
