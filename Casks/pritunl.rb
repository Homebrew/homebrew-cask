cask 'pritunl' do
  version '1.0.1436.36'
  sha256 '29274275fa1da414491ed93690e5a5309fe037290f3ee0b99f0a15d517fece85'

  # github.com/pritunl/pritunl-client-electron was verified as official when first introduced to the cask
  url "https://github.com/pritunl/pritunl-client-electron/releases/download/#{version}/Pritunl.pkg.zip"
  appcast 'https://github.com/pritunl/pritunl-client-electron/releases.atom',
          checkpoint: '8c3a5e68d833c8d3eed26b3e7a24bfd6e440fd3c689f71333151c632b97df91e'
  name 'Pritunl OpenVPN Client'
  homepage 'https://client.pritunl.com/'

  pkg 'Pritunl.pkg'

  uninstall pkgutil:   'com.pritunl.pkg.Pritunl',
            launchctl: [
                         'com.pritunl.client',
                         'com.pritunl.service',
                       ],
            signal:    ['TERM', 'com.electron.pritunl']

  zap delete: '~/Library/Caches/pritunl',
      trash:  [
                '~/Library/Application Support/pritunl',
                '~/Library/Preferences/com.electron.pritunl*',
              ]
end
