cask 'mediainfo' do
  version '19.07'
  sha256 '4dcaa4aa4ef5b6164948515116694f571c29e76af0428f15955a52fb02eb1211'

  url "https://mediaarea.net/download/binary/mediainfo-gui/#{version}/MediaInfo_GUI_#{version}_Mac.dmg"
  appcast 'https://mediaarea.net/rss/mediainfo_updates.xml'
  name 'MediaInfo'
  homepage 'https://mediaarea.net/en/MediaInfo'

  depends_on macos: '>= :high_sierra'

  app 'MediaInfo.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/net.mediaarea.mediainfo.mac-old.sfl*',
               '~/Library/Preferences/net.mediaarea.mediainfo.mac-old.plist',
               '~/Library/Saved Application State/net.mediaarea.mediainfo.mac-old.savedState',
             ]
end
