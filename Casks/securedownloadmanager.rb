cask 'securedownloadmanager' do
  version '3.2'
  sha256 'eb633b849e797a4ddf6ddf6911b3e13337a9ec49ad7c75952dd1a6d741107af5'

  url 'https://e5.onthehub.com/Static/Installers/SDM.dmg'
  appcast 'https://rink.hockeyapp.net/api/2/apps/acef21d15575493385e86659a2bb7e55'
  name 'Kivuto Secure Download Manager'
  name 'SDM'
  homepage 'https://phoenix.onthehub.com/WebStore/Account/SdmDownloadFaq.aspx?secure=1#DownloadInstall'

  app 'SecureDownloadManager.app'
end
