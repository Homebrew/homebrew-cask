cask 'ipswdownloader' do
  version '2.7.0'
  sha256 '76f1fbff4496bb836bce3706bd0488880d82c91494fd58a5dfc99a1d51d75989'

  url "http://downloads.igrsoft.com/downloads/ipswDownloader/ipswDownloader_#{version.no_dots}.zip"
  name 'ipswDownloader'
  homepage 'https://igrsoft.com/ipswdownloader/'

  app 'ipswDownloader.app'
end
