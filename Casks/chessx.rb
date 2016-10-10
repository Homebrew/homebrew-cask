cask 'chessx' do
  version '1.4.0'
  sha256 'cd019f5ad61ea6b7b0488e7a50ffb8012c3f65f11fb0367205e2a342c2eb4d20'

  url "https://downloads.sourceforge.net/chessx/chessx/#{version}/chessx-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/chessx/rss?path=/chessx',
          checkpoint: '187624a5facb26d8a25469c10df522977b166f22de979bb9d2889efb2619c7c8'
  name 'ChessX'
  homepage 'http://chessx.sourceforge.net/'

  pkg 'chessx-installer.mpkg'

  uninstall pkgutil: 'net.sourceforge.chessx'
end
