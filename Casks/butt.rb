cask 'butt' do
  version '0.1.19'
  sha256 '885b53c14f2e231c45d03616eb62c39ccd6a157125c97c7e3cc4730ef4a438db'

  # sourceforge.net/butt was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/butt/butt-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/butt/rss'
  name 'Broadcast Using This Tool'
  homepage 'https://danielnoethen.de/'

  app 'butt.app'
end
