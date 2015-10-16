cask :v1 => 'flip4mac' do
  version '3.3.7'
  sha256 'daaa82dfceb46e879078aacdced1a724e821586d8f6a8573d5f9d650f0fa41be'

  url "http://www.telestream.net/download-files/flip4mac/#{version.sub(%r{^(\d+)\.(\d+).*$},'\1-\2')}/Flip4Mac-#{version}.dmg"
  name 'Flip4Mac'
  homepage 'http://www.telestream.net/flip4mac/'
  license :commercial

  depends_on :macos => '>= :snow_leopard'

  pkg 'Flip4Mac.pkg'

  uninstall :pkgutil => 'net.telestream.Flip4Mac'
end
