cask 'pritunl' do
  version '1.0.1442.97'
  sha256 'f3be2c4ec1ad2dcdae7b458682c7617d0e6659562d4173617a3478c2dfff96a5'

  # github.com/pritunl/pritunl-client-electron was verified as official when first introduced to the cask
  url "https://github.com/pritunl/pritunl-client-electron/releases/download/#{version}/Pritunl.pkg.zip"
  appcast 'https://github.com/pritunl/pritunl-client-electron/releases.atom',
          checkpoint: '4fa4e3b03c625ea9fc62abad90b57972cf18ed2890d082e0416e9a903dde60d9'
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
