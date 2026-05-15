cask "lyn" do
  version "2.4.8"
  sha256 "9577c6a681446b3c86d565857315d40caf3d6ce22cd62ef7635854cd88f0c343"

  url "https://www.lynapp.com/downloads/Lyn-#{version}.dmg"
  name "Lyn"
  desc "Media browser and viewer"
  homepage "https://www.lynapp.com/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/Lyn[._-]?v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on :macos

  app "Lyn.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.lynapp.lyn.sfl*",
    "~/Library/Application Support/Lyn",
    "~/Library/Caches/com.lynapp.lyn",
    "~/Library/HTTPStorages/com.lynapp.lyn",
    "~/Library/Preferences/com.lynapp.lyn.plist",
    "~/Library/Saved Application State/com.lynapp.lyn.savedState",
    "~/Library/WebKit/com.lynapp.lyn",
  ]
end
