cask 'butt' do
  version '0.1.21'
  sha256 'e84e4aa582788cc49288bbcaa1886bd1f2044b60a5afbd24d02fecc4b32ff439'

  # sourceforge.net/butt/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/butt/butt-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/butt/rss'
  name 'Broadcast Using This Tool'
  homepage 'https://danielnoethen.de/'

  app 'butt.app'
end
