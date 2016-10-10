cask 'scribus' do
  version '1.4.6'
  sha256 'db818ae3a69ca16c1b3fb873b55903062f7b81f42d7adcc64a61ee93bf95727e'

  # sourceforge.net/scribus was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/scribus/scribus/#{version}/scribus-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/scribus/rss?path=/scribus',
          checkpoint: '1f49e634e8be3cad53eef763364d5436821f1984cd2a9a9b96e8f5963cb34c79'
  name 'Scribus'
  homepage 'https://www.scribus.net/canvas/Scribus'

  app 'Scribus.app'
end
