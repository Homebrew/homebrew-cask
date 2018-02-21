cask 'ivpn' do
  version '2.7'
  sha256 'c5837cbad898e3e5bbc7d9d9a32a64710076a8a9dfdf2959f4c9a076643e0cc5'

  url "https://www.ivpn.net/releases/osx/IVPN-#{version}.dmg"
  appcast 'https://www.ivpn.net/setup/mac-changelog.html',
          checkpoint: '8b326cf5ef72bc63de1f751acfe6229276d32b1061a91bfd6037720f19b711fe'
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
