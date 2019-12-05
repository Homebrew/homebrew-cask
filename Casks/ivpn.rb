cask 'ivpn' do
  version '2.10.8'
  sha256 '28bd47d4d312f7981de1e643aea7362587fe133a49592dd6a441e74924bbda3c'

  url "https://cdn.ivpn.net/releases/osx/IVPN-#{version}.dmg"
  appcast 'https://www.ivpn.net/updates/mac/sparkle/ivpn_mac_appcast.xml'
  name 'IVPN'
  homepage 'https://www.ivpn.net/apps-macos'

  auto_updates true

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
