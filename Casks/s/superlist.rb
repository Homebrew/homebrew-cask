cask "superlist" do
  version "1.43.3"
  sha256 "ae8060fd7dc7d15b7f222db90feff155002895e928b7cc0bdcf43761995daefd"

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
