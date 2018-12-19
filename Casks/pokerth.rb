cask 'pokerth' do
  version '1.1.1'
  sha256 '910e6da1b460456a98f61e86246fe4a9015c1f4be69420ca7c8016e84c16b31d'

  # downloads.sourceforge.net/pokerth was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/pokerth/PokerTH-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/pokerth/rss'
  name 'PokerTH'
  homepage 'https://www.pokerth.net/'

  app 'pokerth.app'
end
