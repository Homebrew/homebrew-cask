class Peepopen < Cask
  url 'https://topfunky.github.io/PeepOpen/dl/PeepOpen.dmg'
  appcast 'https://peepcode.com/system/apps/PeepOpen/appcast.xml'
  homepage 'http://topfunky.github.io/PeepOpen/'
  version 'latest'
  sha256 :no_check
  link 'PeepOpen.app'
end
