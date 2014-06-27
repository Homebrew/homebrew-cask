class Peepopen < Cask
  version 'latest'
  sha256 :no_check
  
  url 'https://topfunky.github.io/PeepOpen/dl/PeepOpen.dmg'
  appcast 'https://peepcode.com/system/apps/PeepOpen/appcast.xml'
  homepage 'http://topfunky.github.io/PeepOpen/'

  link 'PeepOpen.app'
end
