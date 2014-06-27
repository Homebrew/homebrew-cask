class MasterKey < Cask
  version 'latest'
  sha256 :no_check
  
  url 'http://macinmind.com/MasterKey.dmg'
  appcast 'http://macinmind.com/pads/MasterKeyappcast.xml'
  homepage 'http://macinmind.com/?area=app&app=masterkey&pg=info'

  link 'Master Key.app'
end
