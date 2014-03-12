class CitrixReceiver < Cask
  url 'http://downloadplugins.citrix.com.edgesuite.net/Mac/CitrixReceiverWeb.dmg'
  homepage 'www.citrix.com/receiver'
  version 'latest'
  no_checksum
  install 'Install Citrix Receiver.pkg'
  uninstall :quit => [ 'com.citrix.ReceiverHelper', 'Citrix.ServiceRecords' ],
            :pkgutil => 'com.citrix.ICAClient'
end
