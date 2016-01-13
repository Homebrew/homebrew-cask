cask 'paintbrush' do
  version '2.1.2'
  sha256 '3bf18908a191b65efec2a15af0c5f5e95f76e1ec00d71063e235a146b9f6c417'

  url "http://downloads.sourceforge.net/project/paintbrush/Paintbrush%202.x/Paintbrush%20#{version}/Paintbrush-#{version}.zip"
  appcast 'http://paintbrush.sourceforge.net/updates2x.xml',
          :sha256 => '4caacfbbc8af979c37e16b3c0eb305a5940d20fd1077c75feb8cd18279bd8252'
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
