cask 'pritunl' do
  version '1.0.2428.78'
  sha256 '50431e23ea402265c80044222c1cfe6dc7d1e01795465cd9b0e0e4fd82373a08'

  # github.com/pritunl/pritunl-client-electron/ was verified as official when first introduced to the cask
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
