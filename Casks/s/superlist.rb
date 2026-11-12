cask "superlist" do
  version "1.59.0"
  sha256 "0438fbb3b775fe1bc4778813a1bcf8393a0514a1557a0a3d31dee7f085659e8b"

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
