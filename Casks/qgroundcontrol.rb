cask 'qgroundcontrol' do
  version '3.5.1'
  sha256 'c749c16e2813f150fc95cc612cba3b06c73eb7d551bad5600e476f6408f6937f'

  # github.com/mavlink/qgroundcontrol was verified as official when first introduced to the cask
  url "https://github.com/mavlink/qgroundcontrol/releases/download/v#{version}/QGroundControl.dmg"
  appcast 'https://github.com/mavlink/qgroundcontrol/releases.atom'
  name 'QGroundControl'
  homepage 'http://qgroundcontrol.com/'

  app 'qgroundcontrol.app'
end
