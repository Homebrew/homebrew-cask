cask 'butt' do
  version '0.1.15'
  sha256 'e24c4e16e51fa21e897b88c371e57e248da66eae02d15df9b2dcab67530fcd2c'

  # sourceforge.net/butt was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/butt/butt-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/butt/rss',
          checkpoint: 'a173d19c3d3a1ae54671f7e423fdb153db757e17d4aebe84da1becd6d16e99ff'
  name 'Broadcast Using This Tool'
  homepage 'https://danielnoethen.de/'

  app 'butt.app'
end
