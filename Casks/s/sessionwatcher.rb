cask "sessionwatcher" do
  version "7.3.0"
  sha256 "9e9e6587a8d72647c485b1438f87e69b1341b54e92a853509c39d3ec21a5ae11"

  url "https://sessionwatcher-updates.vercel.app/downloads/SessionWatcher-#{version}.dmg"
  name "SessionWatcher"
  desc "Menu bar monitor for AI coding assistant usage and limits"
  homepage "https://www.sessionwatcher.com/"

  livecheck do
    url "https://sessionwatcher-updates.vercel.app/api/appcast/sessionwatcher"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "SessionWatcher.app"

  zap trash: [
    "~/Library/Application Scripts/C4XW4P5L2Q.com.sessionwatcher.app",
    "~/Library/Application Scripts/com.sessionwatcher.app.widgets",
    "~/Library/Application Scripts/com.sessionwatcher.app.writer",
    "~/Library/Application Scripts/group.com.sessionwatcher.app",
    "~/Library/Application Support/SessionWatcher",
    "~/Library/Caches/com.sessionwatcher.app",
    "~/Library/Caches/com.sessionwatcher.app.sparkle",
    "~/Library/Containers/com.sessionwatcher.app.widgets",
    "~/Library/Containers/com.sessionwatcher.app.writer",
    "~/Library/Group Containers/C4XW4P5L2Q.com.sessionwatcher.app",
    "~/Library/Group Containers/group.com.sessionwatcher.app",
    "~/Library/HTTPStorages/com.sessionwatcher.app",
    "~/Library/HTTPStorages/com.sessionwatcher.app.binarycookies",
    "~/Library/Preferences/com.sessionwatcher.app.plist",
    "~/Library/WebKit/com.sessionwatcher.app",
  ]
end
