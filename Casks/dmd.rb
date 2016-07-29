cask 'dmd' do
  version '2.067.0'
  sha256 'c5d327f72cc0bcf16b598d6b3688c87f51faf8ebc43f85f20fa552dfac08309b'

  url "http://downloads.dlang.org/releases/2.x/#{version}/dmd.#{version}.dmg"
  name 'DMD'
  homepage 'https://dlang.org/'
  license :oss

  pkg 'DMD2.pkg'

  uninstall script:  'uninstall.command',
            pkgutil: 'org.dlang.dmd.dmd2.pkg'
end
