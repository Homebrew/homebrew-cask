cask :v1 => 'pentaho-data-integration' do
  version :latest
  sha256 :no_check

  url 'https://sourceforge.net/projects/pentaho/files/latest/download'
  homepage 'http://community.pentaho.com'
  license :oss

  app 'data-integration/Data Integration.app'
end
