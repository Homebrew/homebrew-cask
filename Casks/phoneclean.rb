cask 'phoneclean' do
  version :latest
  sha256 :no_check

  url 'https://www.imobie.com/product/phoneclean-mac.dmg'
  name 'PhoneClean'
  homepage 'https://www.imobie.com/phoneclean/'
  license :commercial

  app 'PhoneClean.app'
end
