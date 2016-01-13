cask 'opendns-updater' do
  version :latest
  sha256 :no_check

  url 'https://www.opendns.com/download/mac/'
  appcast 'https://opendnsupdate.appspot.com/macupdatecheck/ipupdater/AppCast.xml',
          :checkpoint => 'b2c640c50f73fc87e5f13e97b0e74276e360d5bfb76f2a8c20269ba579f18032'
  name 'OpenDNS Updater'
  homepage 'https://support.opendns.com/entries/23218654-Where-do-I-download-an-OpenDNS-Dynamic-IP-updater-client-'
  license :gratis

  app 'OpenDNS Updater.app'
end
