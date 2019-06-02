cask 'diskcatalogmaker' do
  version '7.4.15'
  sha256 '1cbb5fba30762b3b8de1a3fb4c2aa39bfef217efa64528cb6e3d16fd6a38499d'

  url 'https://download.diskcatalogmaker.com/zip/DiskCatalogMaker.zip'
  appcast 'https://fujiwara.sakura.ne.jp/info/appcast/DiskCatalogMaker.xml'
  name 'DiskCatalogMaker'
  homepage 'https://diskcatalogmaker.com/'

  app 'DiskCatalogMaker.app'
end
