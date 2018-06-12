cask 'riverdesign-sparkle' do
  version '2.6.1'
  sha256 'cc9e72bbb09e22379b69430fc9e94ceedc7316db952a2d6fa392f6762a147f74'

  url 'https://sparkleapp.com/update/Sparkle.zip'
  appcast 'https://sparkleapp.com/update/appcast.php'
  name 'Sparkle'
  homepage 'https://sparkleapp.com/'

  auto_updates true

  app 'Sparkle.app'
end
