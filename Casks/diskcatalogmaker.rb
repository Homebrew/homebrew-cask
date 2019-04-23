cask 'diskcatalogmaker' do
  version '7.4.13'
  sha256 'bf79d87d943ef9b6bfa97df17238d2fa57d0fca9774b12c4492c89b5a0303b79'

  url 'https://download.diskcatalogmaker.com/zip/DiskCatalogMaker.zip'
  appcast 'https://fujiwara.sakura.ne.jp/info/appcast/DiskCatalogMaker.xml'
  name 'DiskCatalogMaker'
  homepage 'https://diskcatalogmaker.com/'

  app 'DiskCatalogMaker.app'
end
