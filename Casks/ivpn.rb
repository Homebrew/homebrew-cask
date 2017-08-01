cask 'ivpn' do
  version '2.6.2'
  sha256 '283ec6bec4c231ce408afe06c133305fd6dd569b543259b787b678e777c74062'

  url "https://www.ivpn.net/releases/osx/IVPN-#{version}.dmg"
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
