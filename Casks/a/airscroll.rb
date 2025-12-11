cask "airscroll" do
  version "1.2.1"
  sha256 :no_check

  url "https://airscroll.net/releases/AirScroll.app.zip"
  name "AirScroll"
  desc "Smooth mouse scrolling utility"
  homepage "https://airscroll.net/"

  livecheck do
    url "https://airscroll.net/releases/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "AirScroll.app"

  uninstall login_item: "AirScroll"

  zap trash: [
    "~/Library/Caches/com.Awesome.AirScroll",
    "~/Library/HTTPStorages/com.Awesome.AirScroll",
    "~/Library/Preferences/com.Awesome.AirScroll.plist",
    "~/Library/WebKit/com.Awesome.AirScroll",
  ]
end
