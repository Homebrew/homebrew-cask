cask 'butt' do
  version '0.1.20'
  sha256 'ef313a1236bea634f0e1f0a088f0ae9c0bbcab61dcf8cfc5e51620b0bd8e14a8'

  # sourceforge.net/butt/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/butt/butt-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/butt/rss'
  name 'Broadcast Using This Tool'
  homepage 'https://danielnoethen.de/'

  app 'butt.app'
end
