cask 'ivpn' do
  version '2.12.0'
  sha256 'a8296ed265f5d56695c75beeb6c3263b829a239a5619708160f6df92de16a1ed'

  url "https://cdn.ivpn.net/releases/osx/IVPN-#{version}.dmg"
  appcast 'https://www.ivpn.net/setup/mac-changelog.html'
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
