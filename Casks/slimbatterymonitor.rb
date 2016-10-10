cask 'slimbatterymonitor' do
  version '1.5'
  sha256 '587ce35b534c26b489b60d7f4ca71a96c1dcd83193a30c58676ae8d4665c6aff'

  url "http://quux.orange-carb.org/dist/SlimBatteryMonitor-#{version}.dmg"
  appcast 'http://www.orange-carb.org/SBM/updates/sbm.xml',
          checkpoint: '8aa20ac38c28f3a2118653d4cb71ee33a56bfcc95954202eb440dbb7a0bd8738'
  name 'SlimBatteryMonitor'
  homepage 'http://www.orange-carb.org/SBM/'

  app 'SlimBatteryMonitor.app'
end
