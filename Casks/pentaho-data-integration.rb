class PentahoDataIntegration < Cask
  version 'latest'
  sha256 :no_check

  url 'https://sourceforge.net/projects/pentaho/files/latest/download'
  homepage 'http://community.pentaho.com'

  app 'data-integration/Data Integration.app'
end
