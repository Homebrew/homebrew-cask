cask 'inky' do
  version '3.3.0_114'
  sha256 '77627cef367177adbf081a7772863f7b448951261f0036ce759b96526cb70140'

  url "https://download.inky.com/InkyInstall_osx_#{version}.dmg"
  name 'Inky'
  homepage 'https://inky.com/'

  app 'Inky.app'

  zap delete: [
                '~/Library/Application Support/Arcode',
                '~/Library/Caches/com.arcode.inky',
              ]
end
