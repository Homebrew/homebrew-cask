cask 'pritunl' do
  version '1.0.1219.32'
  sha256 '304ee0e38d40f23b44dada4754bd16da7d090f152eed16aa634f938d8f0475f7'

  # github.com/pritunl/pritunl-client-electron was verified as official when first introduced to the cask
  url "https://github.com/pritunl/pritunl-client-electron/releases/download/#{version}/Pritunl.pkg.zip"
  appcast 'https://github.com/pritunl/pritunl-client-electron/releases.atom',
          checkpoint: '13919403471869db20159bf51a2263e8dbe12e9a91338587423c90136fa73c43'
  name 'Pritunl OpenVPN Client'
  homepage 'https://client.pritunl.com/'

  pkg 'Pritunl.pkg'

  uninstall pkgutil:   'com.pritunl.pkg.Pritunl',
            launchctl: [
                         'com.pritunl.client',
                         'com.pritunl.service',
                       ]

  zap delete: [
                '~/Library/Application Support/pritunl',
                '~/Library/Caches/pritunl',
                '~/Library/Preferences/com.electron.pritunl.plist',
                '/var/log/pritunl.log',
              ]
end
