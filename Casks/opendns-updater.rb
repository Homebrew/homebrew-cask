class OpendnsUpdater < Cask
  version 'latest'
  sha256 :no_check

  url 'http://www.opendns.com/download/mac/'
  homepage 'https://support.opendns.com/entries/23218654-Where-do-I-download-an-OpenDNS-Dynamic-IP-updater-client-'

  app 'OpenDNS Updater.app'
end
