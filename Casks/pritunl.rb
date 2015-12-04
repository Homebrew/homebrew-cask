cask :v1 => 'pritunl' do
  version '0.10.14'
  sha256 'afa302d8e95d1635584673a3c206d370c93846f519735d9898e75af43d9bd3a8'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/pritunl/pritunl-client-electron/releases/download/#{version}/Pritunl.pkg.zip"
  appcast 'https://github.com/pritunl/pritunl-client-electron/releases.atom'
  name 'Pritunl OpenVPN Client'
  homepage 'http://client.pritunl.com'
  license :gpl

  pkg 'Pritunl.pkg'

  uninstall :pkgutil => 'com.pritunl.pkg.Pritunl'

  zap :delete => [
                   '~/Library/Application Support/pritunl',
                   '~/Library/Caches/pritunl',
                   '~/Library/Preferences/com.electron.pritunl.plist'
                 ]
end
