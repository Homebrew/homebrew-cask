cask 'qdslrdashboard' do
  version '3.5.3'
  sha256 '2af31578a4b1c4203ce15a252d30ef8001aabbe9db3aa84d66ff27799eca86c7'

  # files.lrtimelapse.com/dslrdashboard was verified as official when first introduced to the cask
  url "http://files.lrtimelapse.com/dslrdashboard/V#{version}/qDslrDashboard_V#{version}_OSX_x64.dmg"
  name 'qDslrDashboard'
  homepage 'https://dslrdashboard.info/'

  app 'qDslrDashboard.app'
end
