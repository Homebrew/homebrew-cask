cask 'pritunl' do
  version '1.0.1187.7'
  sha256 'c954e10d48d15bc308d8e4a523a3fe4d597e944fdcd4c88fe3c3ddd0c4fb4255'

  # github.com/pritunl/pritunl-client-electron was verified as official when first introduced to the cask
  url "https://github.com/pritunl/pritunl-client-electron/releases/download/#{version}/Pritunl.pkg.zip"
  appcast 'https://github.com/pritunl/pritunl-client-electron/releases.atom',
          checkpoint: '9881fb6bf246fa62f1c63c387682af226c2fcea4f348b04f02b0714dd83b311a'
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
