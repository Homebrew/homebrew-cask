cask 'macmoney' do
  version '3.8.3'
  sha256 'd62724e09370f213930ec7e375e7e037da4014ec10e5b15bb37e50f364d7bb17'

  url "https://www.devon.riceball.net/downloads/MacMoney_#{version}.dmg"
  appcast 'https://www.devon.riceball.net/display.php?file=m01_dl'
  name 'MacMoney'
  homepage 'https://www.devon.riceball.net/display.php?file=m01'

  app 'MacMoney.app'
end
