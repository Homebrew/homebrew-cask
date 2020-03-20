cask 'chessx' do
  version '1.5.2'
  sha256 '9823291dd75916b4bc65d8ff3975b34f092c3e8a1e3981a577ae4015448a4f5d'

  # downloads.sourceforge.net/chessx was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/chessx/chessx/#{version}/chessx-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/chessx/rss?path=/chessx'
  name 'ChessX'
  homepage 'https://chessx.sourceforge.io/'

  pkg 'chessx-installer.mpkg'

  uninstall pkgutil: 'net.sourceforge.chessx'
end
