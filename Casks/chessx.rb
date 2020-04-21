cask 'chessx' do
  version '1.5.2'
  sha256 '922bde3748dfb78738f7007fbb768e9b42d997d5fb991d6b8f110c3a7e40b611'

  # downloads.sourceforge.net/chessx/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/chessx/chessx/#{version}/chessx-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/chessx/rss?path=/chessx'
  name 'ChessX'
  homepage 'https://chessx.sourceforge.io/'

  pkg 'chessx-installer.mpkg'

  uninstall pkgutil: 'net.sourceforge.chessx'
end
