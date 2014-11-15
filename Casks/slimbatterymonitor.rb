cask :v1 => 'slimbatterymonitor' do
  version '1.5'
  sha256 '587ce35b534c26b489b60d7f4ca71a96c1dcd83193a30c58676ae8d4665c6aff'

  url "http://quux.orange-carb.org/dist/SlimBatteryMonitor-#{version}.dmg"
  appcast 'http://www.orange-carb.org/SBM/updates/sbm.xml',
          :sha256 => 'd0e455439ba8f1a4dc1e575a0e990836beed2ffc175e61f0a0674c238a84b9bf'
  homepage 'http://www.orange-carb.org/SBM/'
  license :unknown

  app 'SlimBatteryMonitor.app'
end
