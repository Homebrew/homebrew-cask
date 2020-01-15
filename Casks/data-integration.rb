cask 'data-integration' do
  version '8.3.0.0-371'
  sha256 'c0dbb17248135423fe6336bc8f45b01c2cf15a9b0498fa1d27c24588b3fa2872'

  # sourceforge.net/pentaho was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/pentaho/pdi-ce-#{version}.zip"
  appcast 'https://sourceforge.net/projects/pentaho/rss?path=/'
  name 'Pentaho Data Integration'
  homepage 'https://community.hitachivantara.com/community/products-and-solutions/pentaho/'

  app 'data-integration/Data Integration.app'
end
