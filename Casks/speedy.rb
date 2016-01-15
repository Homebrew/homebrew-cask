cask 'speedy' do
  version :latest
  sha256 :no_check

  url 'http://www.apimac.com/download/Speedy.zip'
  appcast 'http://www.apimac.com/version_checking/speedy_mac.xml',
          :checkpoint => '6b0638d63dd078a73c3ffd8ae2a625123d52d9a30c4f220676aae8eb36718707'
  name 'Speedy'
  homepage 'http://www.apimac.com/mac/speedy/'
  license :commercial

  app 'Speedy.app'
end
