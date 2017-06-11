cask 'join-together' do
  version '7.7.2'
  sha256 '3c674140d33f80dcf3a3748faa876deac4e05183d5ffbe3e483a917a9281d336'

  url "https://dougscripts.com/itunes/scrx/jointogether#{version.no_dots}.zip"
  appcast 'https://dougscripts.com/itunes/itinfo/jointogether_appcast.xml',
          checkpoint: '617ab4b1fd88e0ef7bf9fab0bbac4982b7d58a80a5a37115c724e39ec0390e2c'
  name 'Join Together'
  homepage 'https://dougscripts.com/apps/jointogetherapp.php'

  app 'Join Together.app'
end
