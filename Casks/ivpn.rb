cask 'ivpn' do
  version '2.11.0'
  sha256 '843bb033829f93da6d579fee1cfe03810fce95c4c6d782bf17a2aea35a470682'

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
