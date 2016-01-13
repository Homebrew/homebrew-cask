cask 'opendns-updater' do
  version :latest
  sha256 :no_check

  url 'https://www.opendns.com/download/mac/'
  appcast 'https://opendnsupdate.appspot.com/macupdatecheck/ipupdater/AppCast.xml',
          :checkpoint => '3585aa32b22700303af09058c569daf7c2726a4c2f90ec581f4014464371b833'
  name 'OpenDNS Updater'
  homepage 'https://support.opendns.com/entries/23218654-Where-do-I-download-an-OpenDNS-Dynamic-IP-updater-client-'
  license :gratis

  app 'OpenDNS Updater.app'
end
