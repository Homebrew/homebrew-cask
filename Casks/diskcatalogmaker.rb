cask 'diskcatalogmaker' do
  version '8.1.3'
  sha256 '1bcdf68a063e4a8165bdff6d8d566663163f938eed3d8a9b91bca4984fe217f7'

  url 'https://download.diskcatalogmaker.com/zip/DiskCatalogMaker.zip'
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.diskcatalogmaker.com/zip/DiskCatalogMaker.zip',
          configuration: version.no_dots
  name 'DiskCatalogMaker'
  homepage 'https://diskcatalogmaker.com/'

  app 'DiskCatalogMaker.app'
end
