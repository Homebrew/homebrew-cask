cask 'pritunl' do
  version '1.0.2404.6'
  sha256 '90e83ac8762694204aa9092ccf0ad951800314c98b2e07c1d092c6805e02ba5d'

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
