cask :v1 => 'flip4mac' do
  version '3.3.6'
  sha256 'd766ab49f22d28accd75b345b0bbd465b94ce3e90eef759a1c9b0276f280d7cb'

  url "http://www.telestream.net/download-files/flip4mac/#{version.sub(%r{^(\d+)\.(\d+).*$},'\1-\2')}/Flip4Mac-#{version}.dmg"
  name 'Flip4Mac'
  homepage 'http://www.telestream.net/flip4mac/'
  license :commercial

  depends_on :macos => '>= :snow_leopard'

  pkg 'Flip4Mac.pkg'

  uninstall :pkgutil => 'net.telestream.Flip4Mac'
end
