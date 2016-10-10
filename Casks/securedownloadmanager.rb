cask 'securedownloadmanager' do
  version :latest
  sha256 :no_check

  url 'https://e5.onthehub.com/Static/Installers/SDM.pkg'
  name 'Kivuto Secure Download Manager'
  name 'SDM'
  homepage 'https://e5.onthehub.com/WebStore/Account/SdmDownloadFaq.aspx?ws=2cbc6a33-25f4-e011-8e6c-f04da23e67f6&secure=1'

  pkg 'SDM.pkg'

  uninstall pkgutil: 'e-academy.com.secureDownloadManager.SecureDownloadManager.pkg'

  zap pkgutil: 'e-academy.com.secureDownloadManager.Applications.pkg'
end
