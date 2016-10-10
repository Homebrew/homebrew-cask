cask 'jettison' do
  version '1.5.2'
  sha256 'c19cc4cc5a58f8694bcc0449e011aaeda5c383f07f32deb0fa4ba86684e337b3'

  url "https://stclairsoft.com/download/Jettison-#{version}.dmg"
  appcast 'https://stclairsoft.com/cgi-bin/sparkle.cgi?JT',
          checkpoint: '279c9659667864da8c7147010fc4db08e0bea52c05c9dc8a08f1aba878374fa4'
  name 'Jettison'
  name 'St. Clair Software Jettison'
  homepage 'https://stclairsoft.com/Jettison'

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
