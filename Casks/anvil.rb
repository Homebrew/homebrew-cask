class Anvil < Cask
  version :latest
  sha256 :no_check

  url 'https://sparkler.herokuapp.com/apps/3/download'
  appcast 'http://sparkler.herokuapp.com/apps/3/updates.xml'
  homepage 'http://anvilformac.com/'

  app 'Anvil.app'
end
