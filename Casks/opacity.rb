cask 'opacity' do
  version :latest
  sha256 :no_check

  url 'http://downloads.likethought.com/opacity.zip'
  appcast 'http://downloads.likethought.com/appcasts/opacity.php',
          :checkpoint => 'ef27833e7e78967837f6c383ad5409ca1b51fc533cbf46215e9604af2276e1eb'
  name 'Opacity'
  homepage 'http://likethought.com/opacity/'
  license :commercial

  app 'Opacity.app'
end
