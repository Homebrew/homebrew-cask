cask 'butt' do
  version '0.1.19'
  sha256 '3204c066c2aded451bd71a3bc2bf2636258286c716d5ded5c0099d7ded304c32'

  # sourceforge.net/butt was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/butt/butt-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/butt/rss'
  name 'Broadcast Using This Tool'
  homepage 'https://danielnoethen.de/'

  app 'butt.app'
end
