cask "superlist" do
  version "1.57.5"
  sha256 "cbc1aa7bd0d30c5328058060c4891e2559b6c6522721db56c4673367cfcfb28a"

  url "https://storage.googleapis.com/superlist-appcast/beta/updates/Superlist-#{version}.zip"
  name "Superlist"
  desc "Collaborative to-do list app"
  homepage "https://www.superlist.com/"

  livecheck do
    url "https://storage.googleapis.com/superlist-appcast/beta/updates/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :monterey

  app "Superlist.app"

  uninstall quit: "com.superlist.superlist"

  zap trash: [
    "~/Library/Application Support/com.superlist.superlist*",
    "~/Library/Caches/com.superlist.superlist*",
    "~/Library/Caches/superlist_sounds",
    "~/Library/HTTPStorages/com.superlist.superlist*",
    "~/Library/Preferences/com.superlist.superlist*.plist",
    "~/Library/Preferences/group.com.superlist.superlist.firebase.plist",
    "~/Library/Saved Application State/com.superlist.superlist.app.savedState",
  ]
end
