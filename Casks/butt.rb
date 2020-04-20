cask 'butt' do
  version '0.1.19'
  sha256 '893c582f738d84c2c82a3e7ccceac81c622edee1fc6eb28891ee8c0854980bd5'

  # sourceforge.net/butt/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/butt/butt-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/butt/rss'
  name 'Broadcast Using This Tool'
  homepage 'https://danielnoethen.de/'

  app 'butt.app'
end
