cask 'fantastical' do
  version '2.3.5'
  sha256 '1afefffa2c8959d52af4e605990d11956250c5dc8009b1bf67caa6ce30b5a680'

  url "http://cdn.flexibits.com/Fantastical_#{version}.zip"
  appcast 'https://flexibits.com/fantastical/appcast2.php',
          checkpoint: '8ce649695395866aac7a766a1be602a2bf87cf1176a1fee52d4878456af583dd'
  name 'Fantastical'
  homepage 'https://flexibits.com/fantastical'

  app "Fantastical #{version.major}.app"

  postflight do
    suppress_move_to_applications
  end

  zap delete: '~/Library/Preferences/com.flexibits.fantastical.plist'
end
