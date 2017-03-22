cask 'qgroundcontrol' do
  version '3.1.2'
  sha256 '6f7e0dfa7b9cf4eee37a10cb83caffedcab84651ee6e6b2fa46b65b4978b2813'

  # github.com/mavlink/qgroundcontrol/releases/download was verified as official when first introduced to the cask
  url "https://github.com/mavlink/qgroundcontrol/releases/download/v#{version}/QGroundControl.dmg"
  appcast 'https://github.com/mavlink/qgroundcontrol/releases.atom',
          checkpoint: '75a58c85a559d9febabb5fc10f543d08754189e4598a0bf2a25598ffdc1b64eb'
  name 'QGroundControl'
  homepage 'http://qgroundcontrol.com/'

  app 'qgroundcontrol.app'
end
