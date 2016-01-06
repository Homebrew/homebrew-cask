cask 'paintbrush' do
  version '2.1.2'
  sha256 '3bf18908a191b65efec2a15af0c5f5e95f76e1ec00d71063e235a146b9f6c417'

  url "http://downloads.sourceforge.net/project/paintbrush/Paintbrush%202.x/Paintbrush%20#{version}/Paintbrush-#{version}.zip"
  appcast 'http://paintbrush.sourceforge.net/updates2x.xml',
          :sha256 => '287a3d82bf8883d38a7414a63df7a8ca6702b02d3955e8f2211e0481025dbb48'
  name 'Paintbrush'
  homepage 'http://paintbrush.sourceforge.net/'
  license :gpl

  app 'Paintbrush.app'

  zap :delete => [
                   '~/Library/Preferences/com.soggywaffles.Paintbrush.LSSharedFileList.plist',
                   '~/Library/Preferences/com.soggywaffles.Paintbrush.plist',
                   '~/Library/Caches/com.soggywaffles.Paintbrush',
                 ]
end
