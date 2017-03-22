cask 'hydrogen' do
  version '0.9.7'
  sha256 'f31d99cbb4e996a90ffc91de5002aaf8e62002ca900c169d4c387d69cadd4ce4'

  # downloads.sourceforge.net/hydrogen was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/hydrogen/Hydrogen-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/hydrogen/rss?path=/Hydrogen',
          checkpoint: 'dd41efb784551287f8a7314cd695a62b15827bbe9a36072cdeed82d837f75689'
  name 'Hydrogen'
  homepage 'http://www.hydrogen-music.org/hcms/'

  app 'hydrogen.app'
end
