cask 'inky' do
  version '4.1.0_146'
  sha256 'da19f8405c8599b7c4b25247346442325b4eb5b7e53c0b63d8c7c760681908cb'

  url "http://download.inky.com/InkyInstall_osx_#{version}.dmg"
  appcast 'http://download.inky.com/inky_appcast_osx.xml'
  name 'Inky'
  homepage 'https://inky.com/'

  app 'Inky.app'

  zap trash: [
               '~/Library/Application Support/Arcode',
               '~/Library/Caches/com.arcode.inky',
             ]
end
