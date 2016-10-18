cask 'speedy' do
  version '4.0.4'
  sha256 '5dda979473073150d06cdeded654045063088e2f302cef45619281ac74242ca9'

  url 'http://www.apimac.com/download/Speedy.zip'
  appcast 'http://www.apimac.com/version_checking/speedy_mac.xml',
          checkpoint: '6b0638d63dd078a73c3ffd8ae2a625123d52d9a30c4f220676aae8eb36718707'
  name 'Speedy'
  homepage 'http://www.apimac.com/mac/speedy/'

  app 'Speedy.app'
end
