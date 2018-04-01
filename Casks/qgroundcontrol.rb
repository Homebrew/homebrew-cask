cask 'qgroundcontrol' do
  version '3.3.0'
  sha256 '8f47006a3a56cf661d7abf4cb01a98ac9faa0dfad89f068e9089849c52b1f933'

  # github.com/mavlink/qgroundcontrol/releases/download was verified as official when first introduced to the cask
  url "https://github.com/mavlink/qgroundcontrol/releases/download/v#{version}/QGroundControl.dmg"
  appcast 'https://github.com/mavlink/qgroundcontrol/releases.atom',
          checkpoint: '64e502f3a117e54f5416b8faaaed598f1f2f3b4ffc7a5a9f15e67dcfa70745c3'
  name 'QGroundControl'
  homepage 'http://qgroundcontrol.com/'

  app 'qgroundcontrol.app'
end
