class GarminCommunicator < Cask
  url 'http://download.garmin.com/software/CommunicatorPluginforMac_410.dmg'
  homepage 'http://www8.garmin.com/support/download_details.jsp?id=3739'
  version '4.10'
  sha256 'd911e30be5e487502d406c835820bc578f055366ad043194af0b0f04b025a046'
  install 'Install Communicator Plugin.pkg'
  uninstall :pkgutil => 'com.garmin.garminGpsControl.pkg'
end
