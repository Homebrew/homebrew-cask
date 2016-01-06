cask 'pritunl' do
  version '0.10.16'
  sha256 '3179f88bf28d0a245cb140414f90f9d5ad13fdef3cefc88764f984e1ca484732'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/pritunl/pritunl-client-electron/releases/download/#{version}/Pritunl.pkg.zip"
  appcast 'https://github.com/pritunl/pritunl-client-electron/releases.atom',
          :sha256 => '851b79be1bdadb1d745c10793fb705fca96a49f185894f660aacc7d5ef5182fe'
  name 'Pritunl OpenVPN Client'
  homepage 'https://client.pritunl.com'
  license :gpl

  pkg 'Pritunl.pkg'

  uninstall :pkgutil => 'com.pritunl.pkg.Pritunl'

  zap :delete => [
                   '~/Library/Application Support/pritunl',
                   '~/Library/Caches/pritunl',
                   '~/Library/Preferences/com.electron.pritunl.plist',
                 ]
end
