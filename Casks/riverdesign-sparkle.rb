cask 'riverdesign-sparkle' do
  version '2.7.1'
  sha256 '349e0344531a174b088e562169295d3f921040151465873461a99864737d4054'

  url 'https://sparkleapp.com/update/Sparkle.zip'
  appcast 'https://sparkleapp.com/update/appcast.php'
  name 'Sparkle'
  homepage 'https://sparkleapp.com/'

  auto_updates true

  app 'Sparkle.app'
end
