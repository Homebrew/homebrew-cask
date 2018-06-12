cask 'apm-planner' do
  version '2.0.25'
  sha256 '97208e8589c44465167d2b84794d8e483c9ffba001df5e81a9e7f9de11fc2cb3'

  url "http://firmware.ardupilot.org/Tools/APMPlanner/apm_planner_#{version}_osx.dmg"
  appcast 'http://firmware.ardupilot.org/Tools/APMPlanner/apm_planner_version.json'
  name 'APM Planner'
  homepage 'http://ardupilot.org/'

  app "APM Planner #{version.major_minor}.app"
  pkg 'FTDIUSBSerialDriver_10_4_10_5_10_6_10_7.mpkg'

  uninstall pkgutil: 'com.FTDI.ftdiusbserialdriverinstaller.*'
end
