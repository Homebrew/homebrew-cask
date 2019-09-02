cask 'butt' do
  version '0.1.18'
  sha256 'a1beae6647ae4cb3463cba90a55e04a4c02a2f694995082a9a4e81fd792f28a9'

  # sourceforge.net/butt was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/butt/butt-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/butt/rss'
  name 'Broadcast Using This Tool'
  homepage 'https://danielnoethen.de/'

  app 'butt.app'
end
