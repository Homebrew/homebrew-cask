cask 'qgroundcontrol' do
  version '3.2.1'
  sha256 '9131b3175b7a3fb380f453bdcf9c4b4311996924c80bbcb06090b22d6acc14f2'

  # github.com/mavlink/qgroundcontrol/releases/download was verified as official when first introduced to the cask
  url "https://github.com/mavlink/qgroundcontrol/releases/download/v#{version}/QGroundControl.dmg"
  appcast 'https://github.com/mavlink/qgroundcontrol/releases.atom',
          checkpoint: 'c0d30ed2eb0172cb4e2cbaa12551c5042f15cf95ae591e01af441c684724bc1d'
  name 'QGroundControl'
  homepage 'http://qgroundcontrol.com/'

  app 'qgroundcontrol.app'
end
