cask 'diskcatalogmaker' do
  version '7.5.6'
  sha256 'b18c2cf8a00c0c6964f79bf3f76058c0c3f8e9b3fbc58a1c5376f17cc7b8269b'

  url 'https://download.diskcatalogmaker.com/zip/DiskCatalogMaker.zip'
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.diskcatalogmaker.com/zip/DiskCatalogMaker.zip',
          configuration: version.no_dots
  name 'DiskCatalogMaker'
  homepage 'https://diskcatalogmaker.com/'

  app 'DiskCatalogMaker.app'
end
