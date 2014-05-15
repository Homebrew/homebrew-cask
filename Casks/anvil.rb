class Anvil < Cask
  url 'http://sparkler.herokuapp.com/apps/3/download'
  appcast 'http://sparkler.herokuapp.com/apps/3/updates.xml'
  homepage 'http://anvilformac.com/'
  version 'latest'
  sha256 :no_check
  link 'Anvil.app'
end
