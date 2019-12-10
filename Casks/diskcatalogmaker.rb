cask 'diskcatalogmaker' do
  version '7.5.9'
  sha256 '9fc1f46e47e37cffbe3ec292a8db90c353cf8e4a6592c978caa21acd1decdfd5'

  url 'https://download.diskcatalogmaker.com/zip/DiskCatalogMaker.zip'
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.diskcatalogmaker.com/zip/DiskCatalogMaker.zip',
          configuration: version.no_dots
  name 'DiskCatalogMaker'
  homepage 'https://diskcatalogmaker.com/'

  app 'DiskCatalogMaker.app'
end
