cask 'pritunl' do
  version '1.0.1210.1'
  sha256 'efb11733636b22483b9331f976a559c41e53ffb0f641f6258a5cb601207306da'

  # github.com/pritunl/pritunl-client-electron was verified as official when first introduced to the cask
  url "https://github.com/pritunl/pritunl-client-electron/releases/download/#{version}/Pritunl.pkg.zip"
  appcast 'https://github.com/pritunl/pritunl-client-electron/releases.atom',
          checkpoint: 'fc15aa703105fa8dd4e9c26266de2a783d340b47ae82dbaef493becfe742d9b7'
  name 'Pritunl OpenVPN Client'
  homepage 'https://client.pritunl.com/'

  pkg 'Pritunl.pkg'

  uninstall pkgutil: 'com.pritunl.pkg.Pritunl'

  zap delete: [
                '~/Library/Application Support/pritunl',
                '~/Library/Caches/pritunl',
                '~/Library/Preferences/com.electron.pritunl.plist',
              ]
end
