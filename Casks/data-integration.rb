cask 'data-integration' do
  version '6.0.1.0-386'
  sha256 '98a1877977cfba5c2ea40baf23921d418068d3ff19d5f949b85b0b036a45cb85'

  # sourceforge.net/sourceforge/pentaho was verified as official when first introduced to the cask
  url "http://downloads.sourceforge.net/sourceforge/pentaho/pdi-ce-#{version}.zip"
  name 'Pentaho Data Integration'
  homepage 'http://community.pentaho.com'
  license :oss

  app 'data-integration/Data Integration.app'
end
