cask 'apm-planner' do
  version '2.0.18'
  sha256 'e1ed3884f676c5a5d8ff14a24acddae4bbfe671bd178315477da2c69c3a0b9be'

  url "http://firmware.diydrones.com/Tools/APMPlanner/apm_planner_#{version}_osx.dmg"
  appcast 'http://firmware.diydrones.com/Tools/APMPlanner/apm_planner_version.json',
          checkpoint: '8c6a4943f94db128bd1c7989639608864fa4bd41186d8abba18a800f04de42ea'
  name 'APM Planner'
  homepage 'http://planner2.ardupilot.com/'
  license :gpl

  app "APM Planner #{version.major_minor}.app"
  pkg 'FTDIUSBSerialDriver_10_4_10_5_10_6_10_7.mpkg'

  uninstall pkgutil: 'com.FTDI.ftdiusbserialdriverinstaller.*'
end
