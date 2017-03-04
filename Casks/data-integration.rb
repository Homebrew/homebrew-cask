cask 'data-integration' do
  version '7.0.0.0-25'
  sha256 '65f074a0ee087bedef0c09345853f6b807500250d7f3ba04e4c61dd3e2b3fa72'

  # sourceforge.net/pentaho was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/pentaho/pdi-ce-#{version}.zip"
  appcast 'https://sourceforge.net/projects/pentaho/rss?path=/Data%20Integration',
          checkpoint: 'e65768e990d0aa7e0ebd91308fa13e30b046152541114b66273ad77ed133a5bf'
  name 'Pentaho Data Integration'
  homepage 'http://community.pentaho.com/'

  app 'data-integration/Data Integration.app'
end
