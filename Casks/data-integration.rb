cask :v1 => 'data-integration' do
  version :latest
  sha256 :no_check

  url 'https://sourceforge.net/projects/pentaho/files/latest/download'
  homepage 'http://community.pentaho.com'
  license :oss
  tags :vendor => 'Pentaho',
       :name   => 'Pentaho Data Integration'

  app 'data-integration/Data Integration.app'
end
