cask "mediainfo" do
  version "20.08"
  sha256 "753c24f51349cde35f58f46f5e04c3e052ff9857c1d6c24a5329d341b7113525"

  url "https://mediaarea.net/download/binary/mediainfo-gui/#{version}/MediaInfo_GUI_#{version}_Mac.dmg"
  appcast "https://mediaarea.net/rss/mediainfo_updates.xml"
  name "MediaInfo"
  homepage "https://mediaarea.net/en/MediaInfo"

  depends_on macos: ">= :high_sierra"

  app "MediaInfo.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/net.mediaarea.mediainfo.mac-old.sfl*",
    "~/Library/Preferences/net.mediaarea.mediainfo.mac-old.plist",
    "~/Library/Saved Application State/net.mediaarea.mediainfo.mac-old.savedState",
  ]
end
