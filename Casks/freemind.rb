cask 'freemind' do
  version '1.0.1'
  sha256 '0bd93317567f947e7fa3b3e8d2e0d908300642edc5e07f1929157469ffd14ea3'

  url "http://downloads.sourceforge.net/project/freemind/freemind/#{version}/FreeMind_#{version}.dmg"
  name 'FreeMind'
  homepage 'http://freemind.sourceforge.net/wiki/index.php/Main_Page'
  license :gpl

  app 'FreeMind.app'
end
