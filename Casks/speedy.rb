cask 'speedy' do
  version '4.0.5'
  sha256 '5dda979473073150d06cdeded654045063088e2f302cef45619281ac74242ca9'

  url "http://www.apimac.com/download/previous/Speedy-#{version.no_dots}.zip"
  appcast 'http://www.apimac.com/version_checking/speedy_mac.xml'
  name 'Speedy'
  homepage 'https://www.apimac.com/'

  app 'Speedy.app'
end
