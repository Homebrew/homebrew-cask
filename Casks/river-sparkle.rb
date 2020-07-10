cask 'river-sparkle' do
  version '2.8.12'
  sha256 :no_check

  url 'https://sparkleapp.com/update/Sparkle.zip'
  appcast 'https://sparkleapp.com/update/appcast.php?lang=en'
  name 'Sparkle'
  homepage 'https://sparkleapp.com/'

  app 'Sparkle.app'
end
