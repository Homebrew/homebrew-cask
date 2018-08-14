cask 'ivpn' do
  version '2.7.9'
  sha256 '851699211cbd7b76f9b6be61e0482f7b440b757fe61b8792a35b2bb8937c21ab'

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
