cask 'chessx' do
  version '1.4.0'
  sha256 'cd019f5ad61ea6b7b0488e7a50ffb8012c3f65f11fb0367205e2a342c2eb4d20'

  url "https://downloads.sourceforge.net/project/chessx/chessx/#{version}/chessx-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/chessx/rss',
          checkpoint: '29b30b79e75985654c3e665b328185cc98a87fd7b1a24735bed214fc669632bd'
  name 'ChessX'
  homepage 'http://chessx.sourceforge.net/'
  license :gpl

  pkg 'chessx-installer.mpkg'

  uninstall pkgutil: 'net.sourceforge.chessx'
end
