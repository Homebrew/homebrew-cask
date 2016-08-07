cask 'ipswdownloader' do
  if MacOS.release <= :snow_leopard
    version '1.6.0'
    sha256 '82a236f69d2b7acfa9b0c801b9df76372005d5aab3f399f0d10db71320bb0af3'
    url 'http://www.igrsoft.com/wp-content/plugins/download-monitor/download.php?id=48'
  else
    version '2.6.4'
    sha256 'ba94d309c8c52b1bf2e58e2afc18eadb1a753e39ce180a255369c13a723e6018'
    url 'http://www.igrsoft.com/wp-content/plugins/download-monitor/download.php?id=69'
  end

  name 'ipswDownloader'
  homepage 'http://www.igrsoft.com/ipswdownloader/'
  license :gratis

  app 'ipswDownloader.app'
end
