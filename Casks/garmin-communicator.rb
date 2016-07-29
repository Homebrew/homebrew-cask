cask 'garmin-communicator' do
  version '4.20'
  sha256 'a706a48926fc3907e84781bdf642ec1754c6081dd3d727ce09ca26c1ae8d9fde'

  url "http://download.garmin.com/software/CommunicatorPluginforMac_#{version.delete('.')}.dmg"
  name 'Garmin Communicator Plugin'
  homepage 'https://www8.garmin.com/support/download_details.jsp?id=3739'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg 'Install Communicator Plugin.pkg'

  uninstall pkgutil: 'com.garmin.garminGpsControl.pkg'
end
