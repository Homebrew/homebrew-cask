cask 'fing-desktop' do
  version :latest
  sha256 :no_check

  url 'https://get.fing.com/fing-desktop-releases/mac/Fing.dmg'
  name 'Fing Desktop'
  homepage 'https://www.fing.com/products/fing-desktop'

  app 'Fing.app'
end
