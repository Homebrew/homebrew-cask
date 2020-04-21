cask 'butt' do
  version '0.1.19'
  sha256 'a24b369af99e1faa5f30a6f8564c5b5525c5dc9f311775cfd58667864294b282'

  # sourceforge.net/butt/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/butt/butt-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/butt/rss'
  name 'Broadcast Using This Tool'
  homepage 'https://danielnoethen.de/'

  app 'butt.app'
end
