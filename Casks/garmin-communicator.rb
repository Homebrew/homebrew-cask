class GarminCommunicator < Cask
  url 'http://download.garmin.com/software/CommunicatorPluginforMac_410.dmg'
  homepage 'http://www8.garmin.com/support/download_details.jsp?id=3739'
  version '4.10'
  sha1 '7c226754f504efd68101272de4741df83970990b'
  install 'Install Communicator Plugin.pkg'
  uninstall :pkgutil => 'com.garmin.garminGpsControl.pkg'
end
