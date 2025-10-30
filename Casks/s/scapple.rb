cask "scapple" do
  version "1.5.3"
  sha256 :no_check

  url "https://scrivener.s3.amazonaws.com/Scapple.dmg",
      verified: "scrivener.s3.amazonaws.com/"
  name "Scapple"
  desc "Notepad software"
  homepage "https://www.literatureandlatte.com/scapple.php"

  livecheck do
    url "https://www.literatureandlatte.com/downloads/scapple/scapple.xml"
    strategy :sparkle, &:short_version
  end

  app "Scapple.app"

  zap trash: [
    "~/Library/Application Support/CloudDocs/session/containers/iCloud.com.literatureandlatte.scapple",
    "~/Library/Application Support/CloudDocs/session/containers/iCloud.com.literatureandlatte.scapple.plist",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.literatureandlatte.scapple.sfl*",
    "~/Library/Application Support/Scapple",
    "~/Library/Autosave Information/com.literatureandlatte.scapple.plist",
    "~/Library/Caches/com.literatureandlatte.scapple",
    "~/Library/HTTPStorages/com.literatureandlatte.scapple",
    "~/Library/HTTPStorages/com.literatureandlatte.scapple.binarycookies",
    "~/Library/Preferences/com.literatureandlatte.scapple.plist",
  ]
end
