cask 'mediainfo' do
  version '18.08'
  sha256 '78d29a43ce3cc3c27faa58229166db2e7d42d7ffcca322e63018333efb91a76f'

  url "https://mediaarea.net/download/binary/mediainfo-gui/#{version}/MediaInfo_GUI_#{version}_Mac.dmg"
  appcast 'https://mediaarea.net/rss/mediainfo_updates.xml'
  name 'MediaInfo'
  homepage 'https://mediaarea.net/en/MediaInfo'

  app 'MediaInfo.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/net.mediaarea.mediainfo.mac-old.sfl*',
               '~/Library/Preferences/net.mediaarea.mediainfo.mac-old.plist',
               '~/Library/Saved Application State/net.mediaarea.mediainfo.mac-old.savedState',
             ]
end
