cask :v1 => 'opendns-updater' do
  version :latest
  sha256 :no_check

  url 'https://www.opendns.com/download/mac/'
  name 'OpenDNS Updater'
  appcast 'https://opendnsupdate.appspot.com/macupdatecheck/ipupdater/AppCast.xml',
          :sha256 => 'd5938a67e84d710e93b5e74a1b515f6881a3f0ff251bfbb5ea61ecdf1596a4a6'
  homepage 'https://support.opendns.com/entries/23218654-Where-do-I-download-an-OpenDNS-Dynamic-IP-updater-client-'
  license :gratis

  app 'OpenDNS Updater.app'
end
