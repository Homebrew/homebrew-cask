cask 'ipswdownloader' do
  version '2.6.6'
  sha256 '00b6901c0e3d18f98a8dace757a56ad248914a9f7aaab24902e631c8d9f9259d'

  url "http://downloads.igrsoft.com/downloads/ipswDownloader/ipswDownloader_#{version.no_dots}.zip"
  name 'ipswDownloader'
  homepage 'https://igrsoft.com/ipswdownloader/'

  app 'ipswDownloader.app'
end
