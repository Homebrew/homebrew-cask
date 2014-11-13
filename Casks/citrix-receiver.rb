cask :v1 => 'citrix-receiver' do
  version :latest
  sha256 :no_check

  url 'http://downloadplugins.citrix.com.edgesuite.net/Mac/CitrixReceiverWeb.dmg'
  homepage 'http://www.citrix.com/receiver'
  license :unknown

  pkg 'Install Citrix Receiver.pkg'
  uninstall :launchctl => [
                           'com.citrix.AuthManager_Mac',
                           'com.citrix.ReceiverHelper',
                           'com.citrix.ServiceRecords',
                          ],
            :quit      => [
                           'Citrix.ServiceRecords',
                           'com.citrix.ReceiverHelper',
                          ],
            :pkgutil   => 'com.citrix.ICAClient'
end
