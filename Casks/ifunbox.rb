class Ifunbox < Cask
  url 'http://dl.i-funbox.com/mac/ifunboxmac.dmg'
  appcast 'http://dl.i-funbox.com/updates/ifunbox.mac/update.xml'
  homepage 'http://www.i-funbox.com/'
  version 'latest'
  sha256 :no_check
  link 'iFunBox.app'
end
