cask 'diskcatalogmaker' do
  version '7.4.11'
  sha256 '099a86dfc8631b8ff94e71fbb67808c4d86bd6ded09d19fb0ff4023967548b0b'

  url 'https://download.diskcatalogmaker.com/zip/DiskCatalogMaker.zip'
  appcast 'https://fujiwara.sakura.ne.jp/info/appcast/DiskCatalogMaker.xml'
  name 'DiskCatalogMaker'
  homepage 'https://diskcatalogmaker.com/'

  app 'DiskCatalogMaker.app'
end
