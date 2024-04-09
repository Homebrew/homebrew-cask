cask "lyn" do
  version "2.3.7"
  sha256 "8fcf3fb201ed5fbe4f01e0a12744efcda08267b398c43efc1142882af5d1d172"

  url "https://www.lynapp.com/downloads/Lyn-#{version}.dmg"
  name "Lyn"
  desc "Media browser and viewer"
  homepage "https://www.lynapp.com/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/Lyn[-_.]?v?(\d+(?:\.\d+)+)\.dmg}i)
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
