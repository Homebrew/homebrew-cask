cask 'purevpn' do
  version :latest
  sha256 :no_check

  # s3.amazonaws.com/purevpn-dialer-assets was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/purevpn-dialer-assets/mac/app/purevpn_setup.dmg'
  name 'PureVPN'
  homepage 'https://www.purevpn.com/'

  app 'PureVPN.app'
end
