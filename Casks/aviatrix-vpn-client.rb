cask 'aviatrix-vpn-client' do
  version '2.11.6'
  sha256 '0b7b0913fede47ce456436d86a2931ec486a8a4d495c68f46968e09d4911183b'

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
