cask 'riverdesign-sparkle' do
  version :latest
  sha256 :no_check

  url 'https://sparkleapp.com/update/Sparkle.zip'
  appcast 'https://sparkleapp.com/update/appcast.php?lang=en',
          checkpoint: 'b1d172a08ac115a5709f01e3eb99673936a8f245e74a95faa1c58749698b1c29'
  name 'Sparkle'
  homepage 'https://sparkleapp.com/'

  auto_updates true

  app 'Sparkle.app'
end
