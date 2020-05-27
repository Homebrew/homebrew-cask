cask 'butt' do
  version '0.1.21'
  sha256 'abdfd065b9c72840671d73727dbd8345af30b661b6d73bc477a23c58e8d0fe4e'

  # sourceforge.net/butt/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/butt/butt-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/butt/rss'
  name 'Broadcast Using This Tool'
  homepage 'https://danielnoethen.de/'

  app 'butt.app'
end
