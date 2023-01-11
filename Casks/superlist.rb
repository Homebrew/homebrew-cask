cask "superlist" do
  version "0.7.0"
  sha256 "aa3ed481977acae386a27442a9b97e0acfdeb1cf8d11b6edfa87c5b371b2f2a9"

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
