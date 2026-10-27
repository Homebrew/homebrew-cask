cask "notomo" do
  version "1.2.0"
  sha256 "901f62dfa1641b2b6563382665a03a71e345a8488f06e3ac9c24103bd5c96c35"

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
