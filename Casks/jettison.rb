cask 'jettison' do
  version '1.5.3'
  sha256 'fdd4a4357b94732c3129cd01af23ce18169b274351c2b5dedba63aa3cb732390'

  url "https://stclairsoft.com/download/Jettison-#{version}.dmg"
  appcast 'https://stclairsoft.com/cgi-bin/sparkle.cgi?JT',
          checkpoint: '6319301b4f7de64553226a1f22044eecd9bfcad0f401f091696b115ceaa950d4'
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
