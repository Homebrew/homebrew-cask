cask 'diskcatalogmaker' do
  version '8.1.4'
  sha256 '1e2667a682d2bfba6c2e1fc7865440ebae6043ac7ea712cb182fe376ed30175f'

  url 'https://download.diskcatalogmaker.com/zip/DiskCatalogMaker.zip'
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.diskcatalogmaker.com/zip/DiskCatalogMaker.zip',
          must_contain: version.no_dots
  name 'DiskCatalogMaker'
  homepage 'https://diskcatalogmaker.com/'

  app 'DiskCatalogMaker.app'
end
