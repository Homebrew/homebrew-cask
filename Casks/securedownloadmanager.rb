cask 'securedownloadmanager' do
  version :latest
  sha256 :no_check

  url 'https://e5.onthehub.com/Static/Installers/SDM.dmg'
  name 'Kivuto Secure Download Manager'
  name 'SDM'
  homepage 'https://phoenix.onthehub.com/WebStore/Account/SdmDownloadFaq.aspx?secure=1#DownloadInstall'

  pkg 'SDM.pkg'

  uninstall pkgutil: 'e-academy.com.secureDownloadManager.SecureDownloadManager.pkg'

  zap pkgutil: 'e-academy.com.secureDownloadManager.Applications.pkg'
end
