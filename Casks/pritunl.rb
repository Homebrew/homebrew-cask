cask 'pritunl' do
  version '1.0.2144.93'
  sha256 '846ecbfbed7e5ef48ad6595e75e2e0e1a3250c4ea08af0375ac98934083f06fc'

  # github.com/pritunl/pritunl-client-electron was verified as official when first introduced to the cask
  url "https://github.com/pritunl/pritunl-client-electron/releases/download/#{version}/Pritunl.pkg.zip"
  appcast 'https://github.com/pritunl/pritunl-client-electron/releases.atom'
  name 'Pritunl OpenVPN Client'
  homepage 'https://client.pritunl.com/'

  pkg 'Pritunl.pkg'

  uninstall pkgutil:   'com.pritunl.pkg.Pritunl',
            launchctl: [
                         'com.pritunl.client',
                         'com.pritunl.service',
                       ],
            signal:    ['TERM', 'com.electron.pritunl'],
            delete:    '/Applications/Pritunl.app'

  zap trash: [
               '~/Library/Application Support/pritunl',
               '~/Library/Caches/pritunl',
               '~/Library/Preferences/com.electron.pritunl*',
             ]
end
