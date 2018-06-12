cask 'qgroundcontrol' do
  version '3.3.2'
  sha256 'fe9ad6822d795de62e7a7c8264d5f1425572ccdbf4712e442758208d6c6b1a77'

  # github.com/mavlink/qgroundcontrol/releases/download was verified as official when first introduced to the cask
  url "https://github.com/mavlink/qgroundcontrol/releases/download/v#{version}/QGroundControl.dmg"
  appcast 'https://github.com/mavlink/qgroundcontrol/releases.atom'
  name 'QGroundControl'
  homepage 'http://qgroundcontrol.com/'

  app 'qgroundcontrol.app'
end
