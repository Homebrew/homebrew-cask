cask 'privatevpn' do
  version '2.8.1'
  sha256 'd98f423036101218cab99973de3cf3efed315e56d2041c77da0fa29942967702'

  # xu515.pvdatanet.com was verified as official when first introduced to the cask
  url 'https://xu515.pvdatanet.com/v3/mac/PrivateVPN.dmg'
  appcast 'https://xu515.pvdatanet.com/v3/mac/appcast.xml'
  name 'PrivateVPN'
  homepage 'https://privatevpn.com/'

  app 'PrivateVPN.app'
end
