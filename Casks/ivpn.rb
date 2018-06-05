cask 'ivpn' do
  version '2.7.8'
  sha256 '86c0cdee409ef5201174bbc056a43a284c762b54ce13c18eadb1c44386e542ad'

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
