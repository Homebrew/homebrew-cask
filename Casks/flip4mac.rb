cask 'flip4mac' do
  version '3.3.7'
  sha256 '5aa38491a98f7cabdaae46da5b7cdbe661eb7acd60fe9ba5a99d84b49634d5a5'

  url "https://www.telestream.net/download-files/flip4mac/#{version.sub(%r{^(\d+)\.(\d+).*$}, '\1-\2')}/Flip4Mac-#{version}.dmg"
  name 'Flip4Mac'
  homepage 'https://www.telestream.net/flip4mac/'
  license :commercial

  depends_on macos: '>= :snow_leopard'

  pkg 'Flip4Mac.pkg'

  uninstall pkgutil: 'net.telestream.Flip4Mac'
end
