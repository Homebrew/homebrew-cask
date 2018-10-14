cask 'expressvpn' do
  version '6.7.6.4456'
  sha256 '8376ab117206e383a0099bcf329a3526539acc5b73b428a5d58d673863165251'

  url "https://download.expressvpn.xyz/clients/mac/expressvpn-install_v#{version}.pkg"
  name 'ExpressVPN'
  homepage 'https://www.expressvpn.xyz/'

  auto_updates true

  pkg "expressvpn-install_v#{version}.pkg"

  uninstall pkgutil:   'com.expressvpn.ExpressVPN',
            launchctl: 'com.expressvpn.ExpressVPN.agent'
end
