cask 'riverdesign-sparkle' do
  version '2.6.1'
  sha256 'cc9e72bbb09e22379b69430fc9e94ceedc7316db952a2d6fa392f6762a147f74'

  url 'https://sparkleapp.com/update/Sparkle.zip'
  appcast 'https://sparkleapp.com/update/appcast.php',
          checkpoint: 'b1d172a08ac115a5709f01e3eb99673936a8f245e74a95faa1c58749698b1c29'
  name 'Sparkle'
  homepage 'https://sparkleapp.com/'

  auto_updates true

  app 'Sparkle.app'
end
