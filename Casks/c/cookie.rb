cask "cookie" do
  version "7.3.6"
  sha256 :no_check

  url "https://sweetpproductions.com/products/cookie#{version.major}/Cookie.dmg"
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
    "~/Library/Application Scripts/*com.sweetpproductions.cookie.app*",
    "~/Library/Containers/com.sweetpproductions.cookie.app*",
    "~/Library/Group Containers/*.com.sweetpproductions.cookie.app",
  ]
end
