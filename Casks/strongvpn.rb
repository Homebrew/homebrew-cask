cask 'strongvpn' do
  version '2.2.1,44950'
  sha256 '6431ed45898870497f92bfa4192314e7dcd68b6e59065b5473dade12e096a042'

  # static.colomovers.com was verified as official when first introduced to the cask
  url 'https://static.colomovers.com/mac/StrongVPN.dmg'
  appcast 'https://static.colomovers.com/mac/updates.xml'
  name 'StrongVPN'
  homepage 'https://strongvpn.com/vpn-apps/macos/'

  app 'StrongVPN.app'
end
