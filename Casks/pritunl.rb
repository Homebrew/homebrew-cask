cask 'pritunl' do
  version '0.10.19'
  sha256 'b8771e4d0ff62db39a1fec3bc17c3b37fd2d92aacc50c392b1a4e48aa182002b'

  # github.com/pritunl/pritunl-client-electron was verified as official when first introduced to the cask
  url "https://github.com/pritunl/pritunl-client-electron/releases/download/#{version}/Pritunl.pkg.zip"
  appcast 'https://github.com/pritunl/pritunl-client-electron/releases.atom',
          checkpoint: '244bf89b155fe8c46f53ec71ca6d9286fbb5fe0132575601fcfb0ab1b941eae4'
  name 'Pritunl OpenVPN Client'
  homepage 'https://client.pritunl.com'
  license :gpl

  pkg 'Pritunl.pkg'

  uninstall pkgutil: 'com.pritunl.pkg.Pritunl'

  zap delete: [
                '~/Library/Application Support/pritunl',
                '~/Library/Caches/pritunl',
                '~/Library/Preferences/com.electron.pritunl.plist',
              ]
end
