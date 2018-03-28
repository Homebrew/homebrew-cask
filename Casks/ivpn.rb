cask 'ivpn' do
  version '2.7.4'
  sha256 '3813f53fac12bb834437ce05c1740c5a4e0694944407616a57d10d3ac79b1fce'

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
