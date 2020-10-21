cask "mediainfo" do
  version "20.09"
  sha256 "4591f29bdfe5b9b0880e645635bd07d7670ed25c8da9ded91f7d28e8989480e8"

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
