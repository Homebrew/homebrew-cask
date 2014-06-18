class GarminCommunicator < Cask
  url 'http://download.garmin.com/software/CommunicatorPluginforMac_420.dmg'
  homepage 'http://www8.garmin.com/support/download_details.jsp?id=3739'
  version '4.20'
  sha256 'a706a48926fc3907e84781bdf642ec1754c6081dd3d727ce09ca26c1ae8d9fde'
  install 'Install Communicator Plugin.pkg'
  uninstall :pkgutil => 'com.garmin.garminGpsControl.pkg'
end
