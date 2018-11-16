cask 'jettison' do
  version '1.7.1'
  sha256 'c87eeaf53952d2e153abac59482708f6b999cb097f5b3a54828c674d169e9b8b'

  url "https://stclairsoft.com/download/Jettison-#{version}.dmg"
  appcast 'https://stclairsoft.com/cgi-bin/sparkle.cgi?JT'
  name 'Jettison'
  name 'St. Clair Software Jettison'
  homepage 'https://stclairsoft.com/Jettison/'

  auto_updates true

  app 'Jettison.app'

  uninstall login_item: 'Jettison'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.stclairsoft.jettison.sfl*',
               '~/Library/Application Support/Jettison',
               '~/Library/Preferences/com.stclairsoft.Jettison.plist',
               '~/Library/Preferences/com.stclairsoft.Jettison.AppStore.plist',
               '~/Library/Caches/com.stclairsoft.Jettison',
             ]
end
