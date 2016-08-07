cask 'data-integration' do
  version '6.0.1.0-386'
  sha256 '98a1877977cfba5c2ea40baf23921d418068d3ff19d5f949b85b0b036a45cb85'

  # sourceforge.net/pentaho was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/pentaho/pdi-ce-#{version}.zip"
  appcast 'https://sourceforge.net/projects/pentaho/rss',
          checkpoint: '70d19f1c19f8c6f11733c18ea3f8217f4514bd4e6aa50763bc05d1ab8ff97f72'
  name 'Pentaho Data Integration'
  homepage 'http://community.pentaho.com'
  license :oss

  app 'data-integration/Data Integration.app'
end
