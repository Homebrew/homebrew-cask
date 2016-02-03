cask 'apm-planner' do
  version '2.0.18'
  sha256 'e1ed3884f676c5a5d8ff14a24acddae4bbfe671bd178315477da2c69c3a0b9be'

  url "http://firmware.diydrones.com/Tools/APMPlanner/apm_planner_#{version}_osx.dmg"
  appcast 'http://firmware.diydrones.com/Tools/APMPlanner/apm_planner_version.json',
          checkpoint: 'd2cb3943ca1caab20f434168ae1f95f1e21e5b0a2bb6ee959cc64cabaf6067dd'
  name 'APM Planner'
  homepage 'http://planner2.ardupilot.com/'
  license :gpl

  app "APM Planner #{version.major_minor}.app"
  pkg 'FTDIUSBSerialDriver_10_4_10_5_10_6_10_7.mpkg'

  uninstall pkgutil: 'com.FTDI.ftdiusbserialdriverinstaller.*'
end
