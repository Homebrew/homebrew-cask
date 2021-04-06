cask "drama" do
  version "2.1.1,43"
  sha256 :no_check

  url "https://www.pixelcut.com/drama/drama.zip",
      verified: "pixelcut.com/drama/"
  name "Drama"
  homepage "https://www.drama.app/"

  livecheck do
    url "https://www.pixelcut.com/drama/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Drama.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.pixelcut.drama.sfl*",
    "~/Library/Application Support/com.pixelcut.drama",
    "~/Library/Preferences/com.pixelcut.drama.plist",
    "~/Library/Caches/com.apple.nsurlsessiond/Downloads/com.pixelcut.drama",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.pixelcut.drama",
    "~/Library/Caches/com.pixelcut.drama",
  ]
end
