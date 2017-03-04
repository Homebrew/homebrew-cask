cask 'inky' do
  version '3.2.7_104'
  sha256 '1254b7de7527b60727a87823bfb5863f30f3645e19a7f10c6824b0b8260ce950'

  url "https://download.inky.com/InkyInstall_osx_#{version}.dmg"
  name 'Inky'
  homepage 'https://inky.com/'

  app 'Inky.app'

  zap delete: [
                '~/Library/Application Support/Arcode',
                '~/Library/Caches/com.arcode.inky',
              ]
end
