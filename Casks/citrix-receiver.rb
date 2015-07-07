cask :v1 => 'citrix-receiver' do
  version :latest
  sha256 :no_check

  # edgesuite.net is the official download host per the vendor homepage
  url 'http://downloadplugins.citrix.com.edgesuite.net/Mac/CitrixReceiverWeb.dmg'
  name 'Citrix Receiver'
  homepage 'https://www.citrix.com/receiver'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

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
