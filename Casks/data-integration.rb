cask :v1 => 'data-integration' do
  version '5.4.0.1-130'
  sha256 '240e72e2227f1e3e4c7b7173a42157a1ba0ef0e2055ffa3122d2f633ca9e14c6'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/pentaho/pdi-ce-#{version}.zip"
  name 'Pentaho Data Integration'
  homepage 'http://community.pentaho.com'
  license :oss
  tags :vendor => 'Pentaho'

  app 'data-integration/Data Integration.app'
end
