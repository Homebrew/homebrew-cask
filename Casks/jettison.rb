cask 'jettison' do
  version '1.5'
  sha256 'b502b1b0cd7730eea576fe7f524bd9914c0652dbbb631362300194cbc7f610ce'

  url "https://stclairsoft.com/download/Jettison-#{version}.dmg"
  appcast 'https://stclairsoft.com/cgi-bin/sparkle.cgi?JT',
          checkpoint: 'fa83610c6373410e200e1cce210b5611575968e883aa33772bf91b17aaccdc7f'
  name 'Jettison'
  name 'St. Clair Software Jettison'
  homepage 'https://stclairsoft.com/Jettison'
  license :commercial

  auto_updates true

  app 'Jettison.app'

  uninstall login_item: 'Jettison'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.stclairsoft.jettison.sfl',
                '~/Library/Application Support/Jettison',
                '~/Library/Preferences/com.stclairsoft.Jettison.plist',
                '~/Library/Preferences/com.stclairsoft.Jettison.AppStore.plist',
                '~/Library/Caches/com.stclairsoft.Jettison',
              ]
end
