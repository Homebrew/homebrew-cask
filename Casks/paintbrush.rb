cask 'paintbrush' do
  version '2.1.2'
  sha256 '3bf18908a191b65efec2a15af0c5f5e95f76e1ec00d71063e235a146b9f6c417'

  url "https://downloads.sourceforge.net/paintbrush/Paintbrush%202.x/Paintbrush%20#{version}/Paintbrush-#{version}.zip"
  appcast "http://paintbrush.sourceforge.net/updates#{version.major}x.xml",
          checkpoint: 'e1e7f7afa9b02245fae55442f3feedddddf1a8d43730abd68425529b83fe37bd'
  name 'Paintbrush'
  homepage 'http://paintbrush.sourceforge.net/'

  app 'Paintbrush.app'

  zap delete: [
                '~/Library/Preferences/com.soggywaffles.Paintbrush.LSSharedFileList.plist',
                '~/Library/Preferences/com.soggywaffles.Paintbrush.plist',
                '~/Library/Caches/com.soggywaffles.Paintbrush',
              ]
end
