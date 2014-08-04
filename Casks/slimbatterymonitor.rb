class Slimbatterymonitor < Cask
  version '1.5'
  sha256 '587ce35b534c26b489b60d7f4ca71a96c1dcd83193a30c58676ae8d4665c6aff'

  url 'http://quux.orange-carb.org/dist/SlimBatteryMonitor-1.5.dmg'
  appcast 'http://www.orange-carb.org/SBM/updates/sbm.xml'
  homepage 'http://www.orange-carb.org/SBM/'

  link 'SlimBatteryMonitor.app'
end
