cask 'qdslrdashboard' do
  version '3.5.7'

  if MacOS.version <= :mavericks
    sha256 '1d643430dc7aa7f25254846eef43e35ee15d2f365526058665c145269042affe'
    # files.lrtimelapse.com/dslrdashboard was verified as official when first introduced to the cask
    url "http://files.lrtimelapse.com/dslrdashboard/V#{version}/qDslrDashboard_V#{version}_macOS_preMojave.dmg"
  else
    sha256 'fef8e9835470e866cae736385458fa66e0d187143a57a6cd85d60c03f1fd6b64'
    # files.lrtimelapse.com/dslrdashboard was verified as official when first introduced to the cask
    url "http://files.lrtimelapse.com/dslrdashboard/V#{version}/qDslrDashboard_V#{version}_macOS_mojave.dmg"
  end

  appcast 'https://dslrdashboard.info/downloads/'
  name 'qDslrDashboard'
  homepage 'https://dslrdashboard.info/'

  app 'qDslrDashboard.app'
end
