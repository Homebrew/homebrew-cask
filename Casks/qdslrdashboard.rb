cask 'qdslrdashboard' do
  version '3.5.1'
  sha256 '7ac36ad7ce8daefa7bbddfd2b1297537716cc83e5ed0bf5cd369fe388159a9db'

  # files.lrtimelapse.com/dslrdashboard was verified as official when first introduced to the cask
  url "http://files.lrtimelapse.com/dslrdashboard/V#{version}/qDslrDashboard_V#{version}_OSX_x64.dmg"
  name 'qDslrDashboard'
  homepage 'http://dslrdashboard.info/'

  app 'qDslrDashboard.app'
end
