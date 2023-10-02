cask "cookie" do
  version "7.0.1"
  sha256 :no_check

  url "https://sweetpproductions.com/products/cookie7/Cookie.dmg"
  name "Cookie"
  desc "Protection from tracking and online profiling"
  homepage "https://sweetpproductions.com/"

  livecheck do
    url "https://sweetpproductions.com/products/cookieapp/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Cookie.app"

  zap trash: [
    "~/Library/Application Scripts/com.sweetpproductions.Cookie5",
    "~/Library/Application Scripts/com.sweetpproductions.CookieApp",
    "~/Library/Containers/com.sweetpproductions.Cookie5",
    "~/Library/Containers/com.sweetpproductions.CookieApp",
    "~/Library/Preferences/com.sweetpproductions.Cookie5.plist",
    "~/Library/Preferences/com.sweetpproductions.CookieApp.plist",
  ]
end
