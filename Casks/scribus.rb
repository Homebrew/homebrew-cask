cask 'scribus' do
  version '1.4.6'
  sha256 'db818ae3a69ca16c1b3fb873b55903062f7b81f42d7adcc64a61ee93bf95727e'

  # sourceforge.net/scribus was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/scribus/scribus/#{version}/scribus-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/scribus/rss?path=/scribus',
          checkpoint: '1a6d38a6de2e0d1432e7ddcce97aeee5725eeaa873dbca16052741df52c3f9be'
  name 'Scribus'
  homepage 'https://www.scribus.net/'

  app 'Scribus.app'
end
