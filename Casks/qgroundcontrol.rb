cask 'qgroundcontrol' do
  version '3.4.4'
  sha256 '2926371d4385d0bd66917c95b4ce62d91969350fcf943ff16367da412c06c380'

  # github.com/mavlink/qgroundcontrol was verified as official when first introduced to the cask
  url "https://github.com/mavlink/qgroundcontrol/releases/download/v#{version}/QGroundControl.dmg"
  appcast 'https://github.com/mavlink/qgroundcontrol/releases.atom'
  name 'QGroundControl'
  homepage 'http://qgroundcontrol.com/'

  app 'qgroundcontrol.app'
end
