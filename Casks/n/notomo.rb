cask "notomo" do
  version "0.43.0"
  sha256 "5c5fcc5c0c432e56188084ff8b44d828e535480aa55815b90004377867cf1e36"

  url "https://notomo.app/Notomo-#{version}.dmg"
  name "Notomo"
  desc "Markdown shortcuts, quick actions and AI for Apple Notes"
  homepage "https://notomo.app/"

  livecheck do
    url "https://notomo.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Notomo.app"

  zap trash: [
    "~/Library/Application Support/Notomo",
    "~/Library/Caches/com.notomo.Notomo",
    "~/Library/HTTPStorages/com.notomo.Notomo",
    "~/Library/Preferences/com.notomo.Notomo.plist",
    "~/Library/WebKit/com.notomo.Notomo",
    "~/Library/WebKit/com.notomo.Notomo.binarycookies",
  ]
end
