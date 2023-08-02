cask "superlist" do
  version "0.23.0"
  sha256 "59e98a206b4743c3f36369f9077f39314c63e0586f0d952909e8fbc8d7808c64"

  url "https://storage.googleapis.com/superlist-appcast/beta/updates/Superlist-#{version}.zip",
      verified: "storage.googleapis.com/superlist-appcast/beta/updates/"
  name "Superlist"
  desc "Collaborative to-do list app"
  homepage "https://www.superlist.com/"

  livecheck do
    url "https://storage.googleapis.com/superlist-appcast/beta/updates/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Superlist.app"

  zap trash: [
    "~/Library/Application Support/com.superlist.superlist*",
    "~/Library/Caches/com.superlist.superlist*",
    "~/Library/HTTPStorages/com.superlist.superlist*",
    "~/Library/Preferences/com.superlist.superlist*.plist",
    "~/Library/Preferences/group.com.superlist.superlist.firebase.plist",
    "~/Library/Saved Application State/com.superlist.superlist.app.savedState",
  ]
end
