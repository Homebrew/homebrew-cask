cask :v1 => 'opendns-updater' do
  version :latest
  sha256 :no_check

  url 'http://www.opendns.com/download/mac/'
  homepage 'https://support.opendns.com/entries/23218654-Where-do-I-download-an-OpenDNS-Dynamic-IP-updater-client-'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'OpenDNS Updater.app'
end
