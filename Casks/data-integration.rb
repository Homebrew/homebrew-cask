cask 'data-integration' do
  version '8.2.0.0-342'
  sha256 '9189d6303088c17b803dda6585c4ce9862c04494797182815c79734f3fa640ca'

  # sourceforge.net/pentaho was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/pentaho/pdi-ce-#{version}.zip"
  appcast 'https://sourceforge.net/projects/pentaho/rss?path=/Data%20Integration'
  name 'Pentaho Data Integration'
  homepage 'https://community.hitachivantara.com/community/products-and-solutions/pentaho/'

  app 'data-integration/Data Integration.app'
end
