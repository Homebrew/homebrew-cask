cask "scapple" do
  version "1.4.1,8168"
  sha256 :no_check

  url "https://scrivener.s3.amazonaws.com/Scapple.dmg",
      verified: "scrivener.s3.amazonaws.com/"
  name "Scapple"
  desc "Notepad software"
  homepage "https://www.literatureandlatte.com/scapple.php"

  livecheck do
    url "https://www.literatureandlatte.com/downloads/scapple/scapple.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :catalina"

  app "Scapple.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.literatureandlatte.scapple.sfl2",
    "~/Library/Application Support/Scapple",
    "~/Library/Autosave Information/com.literatureandlatte.scapple.plist",
    "~/Library/Caches/com.literatureandlatte.scapple",
    "~/Library/HTTPStorages/com.literatureandlatte.scapple.binarycookies",
    "~/Library/HTTPStorages/com.literatureandlatte.scapple",
    "~/Library/Preferences/com.literatureandlatte.scapple.plist",
  ]
end
