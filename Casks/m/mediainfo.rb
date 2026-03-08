cask "mediainfo" do
  version "26.01"
  sha256 "71841e8abe9e6f5982ee81daa77449428573ca02c7f2eadb10c1d52c86a8646d"

  url "https://mediaarea.net/download/binary/mediainfo-gui/#{version}/MediaInfo_GUI_#{version}_Mac.dmg"
  name "MediaInfo"
  desc "Display technical and tag data for video and audio files"
  homepage "https://mediaarea.net/en/MediaInfo"

  # We check the first-party download page, as the Sparkle feed has contained
  # outdated versions or ones that are no longer available.
  livecheck do
    url "https://mediaarea.net/en/MediaInfo/Download/Mac_OS"
    regex(/href=.*?MediaInfo[._-]GUI[._-]v?(\d+(?:\.\d+)+)(?:[._-]Mac)?\.dmg/i)
  end

  app "MediaInfo.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/net.mediaarea.mediainfo.mac-old.sfl*",
    "~/Library/Preferences/net.mediaarea.mediainfo.mac-old.plist",
    "~/Library/Saved Application State/net.mediaarea.mediainfo.mac-old.savedState",
  ]
end
