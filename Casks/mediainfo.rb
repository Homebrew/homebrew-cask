cask 'mediainfo' do
  version '19.04'
  sha256 'eccc1056b5e1e9de48abebaf2d240ad566878436d3d383badeda772080a603e2'

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
