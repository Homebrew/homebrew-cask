cask :v1 => 'phoneclean' do
  version :latest
  sha256 :no_check

  url 'http://www.imobie.com/product/phoneclean-mac.dmg'
  name 'PhoneClean'
  homepage 'http://www.imobie.com/phoneclean/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'PhoneClean.app'
end
