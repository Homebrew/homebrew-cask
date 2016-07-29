cask 'diskcatalogmaker' do
  version :latest
  sha256 :no_check

  url 'http://diskcatalogmaker.com/download/zip/DiskCatalogMaker.zip'
  name 'DiskCatalogMaker'
  homepage 'http://diskcatalogmaker.com'
  license :freemium

  app 'DiskCatalogMaker.app'
end
