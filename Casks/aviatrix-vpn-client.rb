cask 'aviatrix-vpn-client' do
  version '2.10.8'
  sha256 '5911bd5078c0ffdb08a6403f87107d4e14d7267e0fa9b7809f28e76f057d0af1'

  # aviatrix-download.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url 'https://aviatrix-download.s3.amazonaws.com/AviatrixVPNClient/AVPNC_mac.pkg'
  appcast 'https://docs.aviatrix.com/Downloads/samlclient.html'
  name 'Aviatrix VPN Client'
  homepage 'https://docs.aviatrix.com/Downloads/samlclient.html'

  pkg 'AVPNC_mac.pkg'

  uninstall pkgutil:   'com.Aviatrix.VPNClient',
            delete:    '/Applications/Aviatrix VPN Client.app',
            launchctl: 'aviatrix.vpn.client.rp.plist'
end
