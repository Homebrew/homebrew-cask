cask 'slimbatterymonitor' do
  version '1.5'
  sha256 '587ce35b534c26b489b60d7f4ca71a96c1dcd83193a30c58676ae8d4665c6aff'

  url "http://quux.orange-carb.org/dist/SlimBatteryMonitor-#{version}.dmg"
  appcast 'http://www.orange-carb.org/SBM/updates/sbm.xml',
          :checkpoint => 'caa4eee824b2a638dff1b986326c9c33009e4b0d857a819b74a30addbe4b5bf6'
  name 'SlimBatteryMonitor'
  homepage 'http://www.orange-carb.org/SBM/'
  license :gratis

  app 'SlimBatteryMonitor.app'
end
