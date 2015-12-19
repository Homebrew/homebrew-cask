cask 'phoneclean' do
  version :latest
  sha256 :no_check

  url 'http://www.imobie.com/product/phoneclean-mac.dmg'
  name 'PhoneClean'
  homepage 'http://www.imobie.com/phoneclean/'
  license :commercial

  app 'PhoneClean.app'
end
