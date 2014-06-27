class Cleanmymac < Cask
  version 'latest'
  sha256 :no_check
  
  url 'http://dl.devmate.com/com.macpaw.CleanMyMac2/CleanMyMac2.dmg'
  appcast 'http://updates.devmate.com/com.macpaw.CleanMyMac2.xml'
  homepage 'http://macpaw.com/cleanmymac'

  link 'CleanMyMac 2.app'
end
