class Netspot < Cask
  url 'http://www.netspotapp.com/download/NetSpot.dmg'
  appcast 'http://www.netspotapp.com/updates/netspot2-appcast.xml'
  homepage 'http://www.netspotapp.com'
  version 'latest'
  sha256 :no_check
  link 'NetSpot.app'
end
