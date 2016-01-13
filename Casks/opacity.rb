cask 'opacity' do
  version :latest
  sha256 :no_check

  url 'http://downloads.likethought.com/opacity.zip'
  appcast 'http://downloads.likethought.com/appcasts/opacity.php',
          :sha256 => 'fcb96c7649851c604eb947af284ebed7aa900c02b0fcb563d402e31cec7ed847'
  name 'Opacity'
  homepage 'http://likethought.com/opacity/'
  license :commercial

  app 'Opacity.app'
end
