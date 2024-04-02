cask "mediainfo" do
  version "24.03"
  sha256 "76ac91ec1e1b6831f858d091e77bcdaaca4eb7671747626ee360aaa8e9c7d3a3"

  url "https://mediaarea.net/download/binary/mediainfo-gui/#{version}/MediaInfo_GUI_#{version}_Mac.dmg"
  name "MediaInfo"
  desc "Display technical and tag data for video and audio files"
  homepage "https://mediaarea.net/en/MediaInfo"

  livecheck do
    url "https://mediaarea.net/rss/mediainfo_updates.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :high_sierra"

  app "MediaInfo.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/net.mediaarea.mediainfo.mac-old.sfl*",
    "~/Library/Preferences/net.mediaarea.mediainfo.mac-old.plist",
    "~/Library/Saved Application State/net.mediaarea.mediainfo.mac-old.savedState",
  ]
end
