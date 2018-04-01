cask 'opacity' do
  version '1.5.5'
  sha256 '0a86d9f3a4d44a7b54ebd90a4f49877d8f9798cce4ba447646d20ded5e60af56'

  url 'http://downloads.likethought.com/opacity.zip'
  appcast 'http://downloads.likethought.com/appcasts/opacity.php',
          checkpoint: 'ef27833e7e78967837f6c383ad5409ca1b51fc533cbf46215e9604af2276e1eb'
  name 'Opacity'
  homepage 'http://likethought.com/opacity/'

  app 'Opacity.app'
end
