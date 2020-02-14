cask 'diskcatalogmaker' do
  version '8.0.0'
  sha256 '49bceaa453e823bb18253e384d7d68f8556786d8ffe70698bd25f3a72aa8274d'

  url 'https://download.diskcatalogmaker.com/zip/DiskCatalogMaker.zip'
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.diskcatalogmaker.com/zip/DiskCatalogMaker.zip',
          configuration: version.no_dots
  name 'DiskCatalogMaker'
  homepage 'https://diskcatalogmaker.com/'

  app 'DiskCatalogMaker.app'
end
