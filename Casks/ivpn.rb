cask 'ivpn' do
  version '2.9.7'
  sha256 '4f9c9de6bab89d24d34973c1ab5e0f784aafdce036494373150762d340a7d08c'

  url "https://cdn.ivpn.net/releases/osx/IVPN-#{version}.dmg"
  appcast 'https://www.ivpn.net/updates/mac/sparkle/ivpn_mac_appcast.xml'
  name 'IVPN'
  homepage 'https://www.ivpn.net/apps-macos'

  app 'IVPN.app'

  uninstall_preflight do
    set_ownership "#{appdir}/IVPN.app"
  end

  uninstall delete:    [
                         '/Library/Application Support/IVPN',
                         '/Library/PrivilegedHelperTools/net.ivpn.client.Helper',
                       ],
            launchctl: 'net.ivpn.client.Helper',
            quit:      'net.ivpn.client.IVPN'

  zap trash: '~/Library/Preferences/net.ivpn.client.IVPN.plist'
end
