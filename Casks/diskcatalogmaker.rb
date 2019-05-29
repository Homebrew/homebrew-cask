cask 'diskcatalogmaker' do
  version '7.4.14'
  sha256 '44bb8d95d9dd9457c236328ca33d2f74dfac2cf42ed87c29512fabe1d3a02c37'

  url 'https://download.diskcatalogmaker.com/zip/DiskCatalogMaker.zip'
  appcast 'https://fujiwara.sakura.ne.jp/info/appcast/DiskCatalogMaker.xml'
  name 'DiskCatalogMaker'
  homepage 'https://diskcatalogmaker.com/'

  app 'DiskCatalogMaker.app'
end
