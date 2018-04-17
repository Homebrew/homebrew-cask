cask 'freemind' do
  version '1.0.1'
  sha256 '0bd93317567f947e7fa3b3e8d2e0d908300642edc5e07f1929157469ffd14ea3'

  url "https://downloads.sourceforge.net/freemind/freemind/#{version}/FreeMind_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/freemind/rss?path=/freemind',
          checkpoint: 'd037a17cd58a8f5334b0165581abbd5db76d8428e2e1ad19abaf00a715203b3d'
  name 'FreeMind'
  homepage 'http://freemind.sourceforge.net/wiki/index.php/Main_Page'

  app 'FreeMind.app'
end
