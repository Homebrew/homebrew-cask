cask 'diskcatalogmaker' do
  version '8.1.5'
  sha256 'c763edfdc3fca21a2fa8cafb4473e4215d0720feb5811e1b21fc4f4932a9c7ed'

  url 'https://download.diskcatalogmaker.com/zip/DiskCatalogMaker.zip'
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.diskcatalogmaker.com/zip/DiskCatalogMaker.zip',
          must_contain: version.no_dots
  name 'DiskCatalogMaker'
  homepage 'https://diskcatalogmaker.com/'

  app 'DiskCatalogMaker.app'
end
