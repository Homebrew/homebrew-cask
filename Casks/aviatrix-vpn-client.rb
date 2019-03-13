cask 'aviatrix-vpn-client' do
  version :latest
  sha256 :no_check

  # s3-us-west-2.amazonaws.com/aviatrix-download was verified as official when first introduced to the cask
  url 'https://s3-us-west-2.amazonaws.com/aviatrix-download/AviatrixVPNClient/AVPNC_mac.pkg'
  name 'Aviatrix VPN Client'
  homepage 'https://docs.aviatrix.com/Downloads/samlclient.html'

  pkg 'AVPNC_mac.pkg'

  uninstall pkgutil:   'com.Aviatrix.VPNClient',
            delete:    '/Applications/Aviatrix VPN Client.app',
            launchctl: 'aviatrix.vpn.client.rp.plist'
end
