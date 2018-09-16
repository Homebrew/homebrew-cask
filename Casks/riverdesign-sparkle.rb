cask 'riverdesign-sparkle' do
  version '2.6.3'
  sha256 '15268166f2d8aa130883d722972e3c1db24649214a83e0ca78f5e71d124bdbaa'

  url 'https://sparkleapp.com/update/Sparkle.zip'
  appcast 'https://sparkleapp.com/update/appcast.php'
  name 'Sparkle'
  homepage 'https://sparkleapp.com/'

  auto_updates true

  app 'Sparkle.app'
end
