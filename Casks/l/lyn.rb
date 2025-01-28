cask "lyn" do
  version "2.4.4"
  sha256 "ddf9b62a013ee20387e810e499d80b196b4c3a7dc7a3b0ca5aafa3f24f038965"

  url "https://www.lynapp.com/downloads/Lyn-#{version}.dmg"
  name "Lyn"
  desc "Media browser and viewer"
  homepage "https://www.lynapp.com/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/Lyn[._-]?v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: ">= :high_sierra"

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
