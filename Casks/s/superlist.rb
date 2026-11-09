cask "superlist" do
  version "1.58.5"
  sha256 "40f905bfa08485f6e80c197f14025a0b5abf6e8a86b378518b110317e271e5eb"

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
