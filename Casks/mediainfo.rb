cask 'mediainfo' do
  version '18.12'
  sha256 '72687d60345d00f8ee156aba9651b8066e75892f3b2ead885f36edb7ceb7d62c'

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
