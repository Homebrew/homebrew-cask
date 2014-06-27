class StrongvpnClient < Cask
  version '1.0.4'
  sha256 'cacf4f7a94b1601bae2cf19fe94b6dbae827ed531e05ff0f91723aea5b3845b9'
  
  url 'https://mirror2.reliablehosting.com/mac/StrongVPN_Mac_1.0.4.dmg'
  appcast 'https://colomovers.com/mac.xml'
  homepage 'http://strongvpn.com/vpnclient.shtml'

  link 'StrongVPN Client.app'
end
