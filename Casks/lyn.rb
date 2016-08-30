cask 'lyn' do
  version '1.7.2'
  sha256 '97f195659ebbc738405911cc2e0c214c0fdde065861362f4abd06f014478aa6d'

  url "http://www.lynapp.com/downloads/Lyn-#{version}.dmg"
  appcast 'http://www.lynapp.com/lyn/update.xml',
          checkpoint: '3ade7d60985cdb56a526092fc49b77a0db83c7f8ecfe1c595e926c4093fc6b82'
  name 'Lyn'
  homepage 'http://www.lynapp.com/'
  license :commercial

  app 'Lyn.app'
end
