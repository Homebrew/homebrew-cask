cask 'privatevpn' do
  version '2.3.5'
  sha256 '98d55627a704767a24502112491415be70c1e8800b245ea5cd022cb29f7b099d'

  url 'https://privatevpn.com/client/PrivateVPN.dmg'
  appcast 'https://xu515.pvdatanet.com/v3/mac/appcast.xml',
          checkpoint: '924a7c3398f5dd3ae54832c65d43f9851c8e9e952e74e8a9b5e4dbde57661709'
  name 'PrivateVPN'
  homepage 'https://privatevpn.com/'

  depends_on macos: '>= :lion'

  app 'PrivateVPN.app'
end
