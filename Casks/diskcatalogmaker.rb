cask 'diskcatalogmaker' do
  version '8.0.1'
  sha256 '6e99919f3a43b51251c899219e11e2a760ffd60c48fc72ebfdb20045154c9191'

  url 'https://download.diskcatalogmaker.com/zip/DiskCatalogMaker.zip'
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.diskcatalogmaker.com/zip/DiskCatalogMaker.zip',
          configuration: version.no_dots
  name 'DiskCatalogMaker'
  homepage 'https://diskcatalogmaker.com/'

  app 'DiskCatalogMaker.app'
end
