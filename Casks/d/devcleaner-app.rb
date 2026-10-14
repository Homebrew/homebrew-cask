cask "devcleaner-app" do
  version "1.16.0"
  sha256 "ce2f839b8bc34dfdb09f7d2c653bb40af868c3384fb347bd9e419339af466674"

  url "https://devcleaner.app/downloads/DevCleaner-#{version}.dmg"
  name "DevCleaner"
  desc "Find and clear developer tool caches"
  homepage "https://devcleaner.app/"

  livecheck do
    url "https://devcleaner.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  conflicts_with cask: "devcleaner"
  depends_on macos: :sonoma

  app "DevCleaner.app"

  uninstall launchctl: "app.DevCleaner.Helper",
            quit:      "app.DevCleaner"

  zap trash: [
    "~/Library/Application Support/DevCleaner",
    "~/Library/Caches/app.DevCleaner",
    "~/Library/Containers/app.DevCleaner.DevCleanerWidget",
    "~/Library/Group Containers/58JULA45XG.app.DevCleaner",
    "~/Library/HTTPStorages/app.DevCleaner",
    "~/Library/Logs/DevCleaner",
    "~/Library/Preferences/58JULA45XG.app.DevCleaner.plist",
    "~/Library/Preferences/app.DevCleaner.plist",
  ]
end
