cask :v1 => 'data-integration' do
  version :latest
  sha256 :no_check

  url 'https://sourceforge.net/projects/pentaho/files/latest/download'
  name 'Pentaho Data Integration'
  homepage 'http://community.pentaho.com'
  license :oss
  tags :vendor => 'Pentaho'

  app 'data-integration/Data Integration.app'
end
