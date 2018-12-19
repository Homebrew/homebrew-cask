cask 'data-integration' do
  version '8.1.0.0-365'
  sha256 '8bb578bafbef66141b59938ca880a08151c6b84a285abc23d6dce73e04bbc814'

  # sourceforge.net/pentaho was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/pentaho/pdi-ce-#{version}.zip"
  appcast 'https://sourceforge.net/projects/pentaho/rss?path=/Data%20Integration'
  name 'Pentaho Data Integration'
  homepage 'https://community.hitachivantara.com/community/products-and-solutions/pentaho/'

  app 'data-integration/Data Integration.app'
end
