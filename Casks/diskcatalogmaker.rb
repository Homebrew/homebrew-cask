cask 'diskcatalogmaker' do
  version '8.2'
  sha256 'a3c5434bd2e48ae7f538a0f2d5511afab2c5fb4c9382f8eb0c88166aa0b38b39'

  url 'https://download.diskcatalogmaker.com/zip/DiskCatalogMaker.zip'
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.diskcatalogmaker.com/zip/DiskCatalogMaker.zip',
          must_contain: version.no_dots
  name 'DiskCatalogMaker'
  homepage 'https://diskcatalogmaker.com/'

  app 'DiskCatalogMaker.app'
end
