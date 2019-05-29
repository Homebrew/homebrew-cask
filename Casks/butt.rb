cask 'butt' do
  version '0.1.17'
  sha256 'fa0b00284f29fda75272dc40480333c9a86ec9d41a30f7c41700127b539dec16'

  # sourceforge.net/butt was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/butt/butt-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/butt/rss'
  name 'Broadcast Using This Tool'
  homepage 'https://danielnoethen.de/'

  app 'butt.app'
end
