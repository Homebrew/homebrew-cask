cask "cookie" do
  version "7.1.6"
  sha256 :no_check

  url "https://sweetpproductions.com/products/cookie7/Cookie.dmg"
  name "Cookie"
  desc "Protection from tracking and online profiling"
  homepage "https://sweetpproductions.com/"

  livecheck do
    url "https://sweetpproductions.com/products/cookie#{version.major}/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Cookie.app"

  zap trash: [
    "~/Library/Containers/com.sweetpproductions.cookie.app",
    "~/Library/Containers/com.sweetpproductions.cookie.app.LoginHelper",
    "~/Library/Application Scripts/com.sweetpproductions.cookie.app.LoginHelper",
  ]
end
