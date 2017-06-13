cask 'hydrogen' do
  version '0.9.7'
  sha256 'f31d99cbb4e996a90ffc91de5002aaf8e62002ca900c169d4c387d69cadd4ce4'

  # downloads.sourceforge.net/hydrogen was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/hydrogen/Hydrogen-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/hydrogen/rss?path=/Hydrogen',
          checkpoint: '30890b4eb7b7e361612774d4b464afb54a91fe97825d2c8b054f75036352892d'
  name 'Hydrogen'
  homepage 'http://www.hydrogen-music.org/hcms/'

  app 'hydrogen.app'
end
