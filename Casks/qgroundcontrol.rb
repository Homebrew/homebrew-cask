cask 'qgroundcontrol' do
  version '3.1.3'
  sha256 '20ad7970b14ff3286dc7b217b49420286b09a99c1244c95ca185870d8f3bca94'

  # github.com/mavlink/qgroundcontrol/releases/download was verified as official when first introduced to the cask
  url "https://github.com/mavlink/qgroundcontrol/releases/download/v#{version}/QGroundControl.dmg"
  appcast 'https://github.com/mavlink/qgroundcontrol/releases.atom',
          checkpoint: '4b9d994643c4854fa1540ee06d4c26aff00172bf6aa734bc0da3f08925a4d781'
  name 'QGroundControl'
  homepage 'http://qgroundcontrol.com/'

  app 'qgroundcontrol.app'
end
