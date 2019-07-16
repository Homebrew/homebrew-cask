cask 'diskcatalogmaker' do
  version '7.5.2'
  sha256 'b9e6ea45c903a8ed2b6fd0b1c2a6de7a6bce4b7c799e2907f3a6951f500298e7'

  url 'https://download.diskcatalogmaker.com/zip/DiskCatalogMaker.zip'
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.diskcatalogmaker.com/zip/DiskCatalogMaker.zip',
          configuration: version.no_dots
  name 'DiskCatalogMaker'
  homepage 'https://diskcatalogmaker.com/'

  app 'DiskCatalogMaker.app'
end
