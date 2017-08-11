cask 'pritunl' do
  version '1.0.1429.19'
  sha256 'fac9415eda6f7330fb3c28a2a06b51c4d9164b1cdd9b4355fcdc2147f308eb61'

  # github.com/pritunl/pritunl-client-electron was verified as official when first introduced to the cask
  url "https://github.com/pritunl/pritunl-client-electron/releases/download/#{version}/Pritunl.pkg.zip"
  appcast 'https://github.com/pritunl/pritunl-client-electron/releases.atom',
          checkpoint: 'd04d81cf1cd6b8bf545f846f07c8d5afdfbeb8f1528b80a045a679597ee440c3'
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
              ]
end
