cask 'ipswdownloader' do
  if MacOS.version <= :snow_leopard
    version '1.6.0'
    sha256 '82a236f69d2b7acfa9b0c801b9df76372005d5aab3f399f0d10db71320bb0af3'
    url 'http://www.igrsoft.com/wp-content/plugins/download-monitor/download.php?id=48'
  else
    version '2.6.6'
    sha256 '00b6901c0e3d18f98a8dace757a56ad248914a9f7aaab24902e631c8d9f9259d'
    url "http://downloads.igrsoft.com/downloads/ipswDownloader/ipswDownloader_#{version.no_dots}.zip"
  end

  name 'ipswDownloader'
  homepage 'https://igrsoft.com/ipswdownloader/'

  app 'ipswDownloader.app'
end
