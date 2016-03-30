cask 'pritunl' do
  version '0.10.18'
  sha256 'c74d3433a979035f183634991e5aef5ac6459b6fc954cc5f08b6282d18944815'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/pritunl/pritunl-client-electron/releases/download/#{version}/Pritunl.pkg.zip"
  appcast 'https://github.com/pritunl/pritunl-client-electron/releases.atom',
          checkpoint: '9887a9f0fcb6f84773e276308f2414c5af07c89a549d0d7eaf59279b964c1601'
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
