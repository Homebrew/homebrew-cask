cask 'securedownloadmanager' do
  version :latest
  sha256 :no_check

  url 'https://e5.onthehub.com/Static/Installers/SDM.dmg'
  appcast 'https://rink.hockeyapp.net/api/2/apps/acef21d15575493385e86659a2bb7e55'
  name 'Kivuto Secure Download Manager'
  name 'SDM'
  homepage 'https://phoenix.onthehub.com/WebStore/Account/SdmDownloadFaq.aspx?secure=1#DownloadInstall'

  app 'SecureDownloadManager.app'
end
