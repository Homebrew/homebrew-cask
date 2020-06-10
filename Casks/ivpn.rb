cask 'ivpn' do
  version '2.12.2'
  sha256 'f3657528b6f96f444e83e889a0a6cc6f337ae7328f15718e40ea424fc102aa2f'

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
