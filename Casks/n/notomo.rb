cask "notomo" do
  version "1.2.1"
  sha256 "44aa974361463bedda1107633dd450e08a1d02a4c8d0fa38bc2788a5cf833f70"

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
