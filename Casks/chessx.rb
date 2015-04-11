cask :v1 => 'chessx' do
  version '1.2.2'
  sha256 '2a2064eed320867b6e054ddfee1e0f4ea0c307e3648c28835f0909568ce7b74f'
  url "http://downloads.sourceforge.net/project/chessx/chessx/#{version}/chessx-#{version}.dmg"

  name 'ChessX'
  homepage 'http://chessx.sourceforge.net/'
  license :gpl

  pkg 'chessx-installer.mpkg'
  uninstall :pkgutil => 'net.sourceforge.chessx'
end
