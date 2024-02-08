cask "trackerzapper" do
  version "1.2.1"
  sha256 "a98920ad628c9f26cfef965a10837f656700f181f250f026c1367d5ebdd7ec45"

  url "https://github.com/rknightuk/TrackerZapper/releases/download/#{version}/TrackerZapper.app.zip",
      verified: "github.com/rknightuk/TrackerZapper/"
  name "trackerzapper"
  desc "Menubar app to remove link tracking parameters automatically"
  homepage "https://rknight.me/apps/tracker-zapper"

  depends_on macos: ">= :big_sur"

  app "TrackerZapper.app"

  uninstall quit: "com.rknightuk.TrackerZapper"

  zap trash: [
    "~/Library/Application Scripts/com.rknightuk.TrackerZapper",
    "~/Library/Application Scripts/com.rknightuk.TrackerZapper-LaunchAtLoginHelper",
    "~/Library/Containers/com.rknightuk.TrackerZapper",
    "~/Library/Containers/com.rknightuk.TrackerZapper-LaunchAtLoginHelper",
  ]
end
