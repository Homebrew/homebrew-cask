cask 'pritunl' do
  version '1.0.1177.2'
  sha256 '582f3c661ba00bacb057e0749bf317394ae6875e1c34b83fbdd2d866f876780e'

  # github.com/pritunl/pritunl-client-electron was verified as official when first introduced to the cask
  url "https://github.com/pritunl/pritunl-client-electron/releases/download/#{version}/Pritunl.pkg.zip"
  appcast 'https://github.com/pritunl/pritunl-client-electron/releases.atom',
          checkpoint: '1a98f5ea0efb1aed581e64130781d73e7295edfd245cf893c7846123059bb4f0'
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
