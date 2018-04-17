cask 'apptrans' do
  version :latest
  sha256 :no_check

  url 'http://dl.imobie.com/apptrans-mac.dmg'
  name 'AppTrans'
  homepage 'https://www.imobie.com/apptrans/'

  app 'AppTrans.app'
end
