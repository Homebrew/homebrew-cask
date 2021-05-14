cask "mediainfo" do
  version "21.03"
  sha256 "568313eca4e016ae61102e0ab15ce3c1aa7b1decdd2d683effc794bb2f21ec77"

  url "https://mediaarea.net/download/binary/mediainfo-gui/#{version}/MediaInfo_GUI_#{version}_Mac.dmg"
  name "MediaInfo"
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
