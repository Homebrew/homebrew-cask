cask "drama" do
  version "2.1.1"
  sha256 "2020d547324781c2faf67591a5173f63dcb6b1e6029dfe527a79d3126c6d0f56"

  # pixelcut.com/drama/ was verified as official when first introduced to the cask
  url "https://www.pixelcut.com/drama/drama.zip"
  appcast "https://www.pixelcut.com/drama/appcast.xml"
  name "Drama"
  homepage "https://www.drama.app/"

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
