cask 'qgroundcontrol' do
  version '3.4.1'
  sha256 'cd3dc9e6ef8f5775f6d49c606d6145c4097f3a950ed3ab0a1c378bf810459020'

  # github.com/mavlink/qgroundcontrol was verified as official when first introduced to the cask
  url "https://github.com/mavlink/qgroundcontrol/releases/download/v#{version}/QGroundControl.dmg"
  appcast 'https://github.com/mavlink/qgroundcontrol/releases.atom'
  name 'QGroundControl'
  homepage 'http://qgroundcontrol.com/'

  app 'qgroundcontrol.app'
end
