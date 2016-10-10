cask 'apm-planner' do
  version '2.0.20'
  sha256 '2635f4d66dc4290a0f816bad7e6a029ab453385710fff428128f4bbf6926ced8'

  # diydrones.com was verified as official when first introduced to the cask
  url "http://firmware.diydrones.com/Tools/APMPlanner/apm_planner_#{version}_osx.dmg"
  appcast 'http://firmware.diydrones.com/Tools/APMPlanner/apm_planner_version.json',
          checkpoint: '3abbf4b7115646de8e41d974731c2697b59c34c0a6761de7220aaaa3c82d2d73'
  name 'APM Planner'
  homepage 'http://planner2.ardupilot.com/'

  app "APM Planner #{version.major_minor}.app"
  pkg 'FTDIUSBSerialDriver_10_4_10_5_10_6_10_7.mpkg'

  uninstall pkgutil: 'com.FTDI.ftdiusbserialdriverinstaller.*'
end
