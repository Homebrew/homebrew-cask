cask 'apm-planner' do
  version '2.0.24'
  sha256 '5215a277a52b7518b9d3789d5545d954ffb8f039bcbb2161a5a08e9ac168a4e3'

  url "http://firmware.ardupilot.org/Tools/APMPlanner/apm_planner_#{version}_osx.dmg"
  appcast 'http://firmware.ardupilot.org/Tools/APMPlanner/apm_planner_version.json',
          checkpoint: 'c05e845dcfbcd54d6aaa3a597495483a526c5550cd06f6631ecee0cdfd68ab08'
  name 'APM Planner'
  homepage 'http://ardupilot.org/'

  app "APM Planner #{version.major_minor}.app"
  pkg 'FTDIUSBSerialDriver_10_4_10_5_10_6_10_7.mpkg'

  uninstall pkgutil: 'com.FTDI.ftdiusbserialdriverinstaller.*'
end
