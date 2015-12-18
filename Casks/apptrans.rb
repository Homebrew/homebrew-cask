cask 'apptrans' do
  version :latest
  sha256 :no_check

  url 'http://www.imobie.com/product/apptrans-mac.dmg'
  name 'AppTrans'
  homepage 'http://www.imobie.com/apptrans/'
  license :gratis

  app 'AppTrans.app'
end
