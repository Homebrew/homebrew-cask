cask 'pritunl' do
  version '1.0.2418.61'
  sha256 '6d74aee65804189a5f03cbb968d7f78c383a6f2dc0eccf205df178f97e0d99bf'

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
