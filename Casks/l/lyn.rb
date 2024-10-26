cask "lyn" do
  version "2.4"
  sha256 "e71467942da444c2004ed0208d80ef6694c9d8c3926f2f9092e89c0d57cbdeb1"

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
