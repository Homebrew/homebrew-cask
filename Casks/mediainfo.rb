cask 'mediainfo' do
  version '20.03'
  sha256 '8bc9aa24da2b78c15027c93afe0f078dab8ab32983ee14157ddaa86198a0bdd2'

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
