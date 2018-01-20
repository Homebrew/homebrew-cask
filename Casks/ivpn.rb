cask 'ivpn' do
  version '2.6.7'
  sha256 'c95ab53abdf66de2bd673e45bdb61211d912bce123e3babac397333bc8957cf8'

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
