cask 'alternote' do
  version '1.0.10,1010'
  sha256 '5d72b8d6d687ad2aa4a8dec64424b4d4292b16b7d1c9b41f4c9be078368686a7'

  url "http://alternoteapp.com/assets/downloads/Alternote#{version.after_comma}.zip"
  appcast 'http://alternoteapp.com/assets/appcast.xml',
          checkpoint: '1b523b50485c377b875d00ac3b182ed7283a27ec6c4b356e6d117def11b3c836'
  name 'Alternote'
  homepage 'http://alternoteapp.com/'

  app 'Alternote.app'

  uninstall quit: 'com.Alternote'
end
