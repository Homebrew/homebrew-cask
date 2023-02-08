cask "superlist" do
  version "0.9.1"
  sha256 "f5ae0095ccde966e1eb116289020a7dd9b980de91b0bdf4a93e0bbd79490b589"

  url "https://storage.googleapis.com/superlist-appcast/beta/updates/Superlist-#{version}.zip",
      verified: "storage.googleapis.com/superlist-appcast/"
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
