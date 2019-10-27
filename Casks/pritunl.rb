cask 'pritunl' do
  version '1.0.2226.23'
  sha256 'a10d3144ef7309b11ba795c8f350b9f806438c4288fbee9c8e9526f930faca6d'

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
