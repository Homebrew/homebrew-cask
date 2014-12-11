cask :v1 => 'phoneclean' do
  version :latest
  sha256 :no_check

  url 'http://www.imobie.com/product/phoneclean-mac.dmg'
  homepage 'http://www.imobie.com/phoneclean/'
  license :unknown    # todo: improve this machine-generated value

  app 'PhoneClean.app'
end
