cask 'qdslrdashboard' do
  version '3.5.5'
  sha256 '11a97b3da25f69d96d16c37cf9737d65599756411039a8b05d166eb314a79628'

  # files.lrtimelapse.com/dslrdashboard was verified as official when first introduced to the cask
  url "http://files.lrtimelapse.com/dslrdashboard/V#{version}/qDslrDashboard_V#{version}_OSX_x64.dmg"
  name 'qDslrDashboard'
  homepage 'https://dslrdashboard.info/'

  app 'qDslrDashboard.app'
end
