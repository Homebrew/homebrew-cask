cask 'freemind' do
  version '1.0.1'
  sha256 '0bd93317567f947e7fa3b3e8d2e0d908300642edc5e07f1929157469ffd14ea3'

  url "https://downloads.sourceforge.net/freemind/freemind/#{version}/FreeMind_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/freemind/rss?path=/freemind',
          checkpoint: '4e53a4b189d19f05fdf845ce1873d530758ef35f508a41328b397432e45bb38a'
  name 'FreeMind'
  homepage 'http://freemind.sourceforge.net/wiki/index.php/Main_Page'

  app 'FreeMind.app'
end
