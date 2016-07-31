cask 'freemind' do
  version '1.0.1'
  sha256 '0bd93317567f947e7fa3b3e8d2e0d908300642edc5e07f1929157469ffd14ea3'

  url "https://downloads.sourceforge.net/freemind/freemind/#{version}/FreeMind_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/freemind/rss',
          checkpoint: 'bc4863874fb8542b0c851ee6df5167ebd37d2b21ae6976157b6525405b226ab8'
  name 'FreeMind'
  homepage 'http://freemind.sourceforge.net/wiki/index.php/Main_Page'
  license :gpl

  app 'FreeMind.app'
end
