cask 'strongvpn' do
  version '2.2.0,44443'
  sha256 'be67e34a45e8bb7383a4797dd5e89a4de16c1963d817be583ddf03ec3664f260'

  # static.colomovers.com was verified as official when first introduced to the cask
  url 'https://static.colomovers.com/mac/StrongVPN.dmg'
  appcast 'https://static.colomovers.com/mac/updates.xml'
  name 'StrongVPN'
  homepage 'https://strongvpn.com/vpn-apps/macos/'

  app 'StrongVPN.app'
end
