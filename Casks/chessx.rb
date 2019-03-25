cask 'chessx' do
  version '1.4.11'
  sha256 '1d9af7a75179bec0ab75db5a8e6ce20aa4625fd816e74626fabc3c4f988791f2'

  # downloads.sourceforge.net/chessx was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/chessx/chessx/#{version}/chessx-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/chessx/rss?path=/chessx'
  name 'ChessX'
  homepage 'https://chessx.sourceforge.io/'

  pkg 'chessx-installer.mpkg'

  uninstall pkgutil: 'net.sourceforge.chessx'
end
