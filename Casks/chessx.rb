cask 'chessx' do
  version '1.5.0'
  sha256 'c75ef2f58f6eb99816b2ceecbb80073b9e3b3b79fa4376d65118928db02469b0'

  # downloads.sourceforge.net/chessx was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/chessx/chessx/#{version}/chessx-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/chessx/rss?path=/chessx'
  name 'ChessX'
  homepage 'https://chessx.sourceforge.io/'

  pkg 'chessx-installer.mpkg'

  uninstall pkgutil: 'net.sourceforge.chessx'
end
