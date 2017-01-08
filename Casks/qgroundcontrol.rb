cask 'qgroundcontrol' do
  version '3.1.1'
  sha256 '94bf0c746a2a735362b72bac45f0c118e79837ff0afbd25e42df9b84d57c49ba'

  # github.com/mavlink/qgroundcontrol/releases/download was verified as official when first introduced to the cask
  url "https://github.com/mavlink/qgroundcontrol/releases/download/v#{version}/QGroundControl.dmg"
  appcast 'https://github.com/mavlink/qgroundcontrol/releases.atom',
          checkpoint: '3853b894c09072a9a14faaae469281cf62b854fed38e61ee3c76540ad18cd790'
  name 'QGroundControl'
  homepage 'http://qgroundcontrol.com/'

  app 'qgroundcontrol.app'
end
