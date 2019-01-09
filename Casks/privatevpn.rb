cask 'privatevpn' do
  version '2.3.5'
  sha256 '98d55627a704767a24502112491415be70c1e8800b245ea5cd022cb29f7b099d'

  # xu515.pvdatanet.com was verified as official when first introduced to the cask
  url 'https://xu515.pvdatanet.com/v3/mac/PrivateVPN.dmg'
  appcast 'https://xu515.pvdatanet.com/v3/mac/appcast.xml'
  name 'PrivateVPN'
  homepage 'https://privatevpn.com/'

  depends_on macos: '>= :lion'

  app 'PrivateVPN.app'
end
