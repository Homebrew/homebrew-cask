cask 'chessx' do
  version '1.4.0'
  sha256 'cd019f5ad61ea6b7b0488e7a50ffb8012c3f65f11fb0367205e2a342c2eb4d20'

  url "http://downloads.sourceforge.net/project/chessx/chessx/#{version}/chessx-#{version}.dmg"
  name 'ChessX'
  homepage 'http://chessx.sourceforge.net/'
  license :gpl

  pkg 'chessx-installer.mpkg'

  uninstall pkgutil: 'net.sourceforge.chessx'
end
