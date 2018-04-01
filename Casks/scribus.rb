cask 'scribus' do
  version '1.4.6'
  sha256 'db818ae3a69ca16c1b3fb873b55903062f7b81f42d7adcc64a61ee93bf95727e'

  # sourceforge.net/scribus was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/scribus/scribus/#{version}/scribus-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/scribus/rss?path=/scribus',
          checkpoint: '977e2163a7477ca20e74f118a54acbb2df4e47567c1656cd08680bac65e9be7c'
  name 'Scribus'
  homepage 'https://www.scribus.net/'

  app 'Scribus.app'
end
