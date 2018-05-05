cask 'privatevpn' do
  version :latest
  sha256 :no_check

  url 'https://privatevpn.com/client/PrivateVPN.dmg'
  name 'PrivateVPN'
  homepage 'https://privatevpn.com/'

  depends_on macos: '>= :lion'

  app 'PrivateVPN.app'
end
