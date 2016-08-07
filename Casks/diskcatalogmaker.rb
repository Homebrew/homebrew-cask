cask 'diskcatalogmaker' do
  version :latest
  sha256 :no_check

  url 'https://download.diskcatalogmaker.com/zip/DiskCatalogMaker.zip'
  name 'DiskCatalogMaker'
  homepage 'http://diskcatalogmaker.com'
  license :freemium

  app 'DiskCatalogMaker.app'
end
