cask 'qgroundcontrol' do
  version '3.1.0'
  sha256 'c75b08f9fb3b345aa8ee158559c7ae711322df70d0af4a781534c50f4c64e4c1'

  # github.com/mavlink/qgroundcontrol/releases/download was verified as official when first introduced to the cask
  url "https://github.com/mavlink/qgroundcontrol/releases/download/v#{version}/QGroundControl.dmg"
  appcast 'https://github.com/mavlink/qgroundcontrol/releases.atom',
          checkpoint: '3447107ae1082a5556d5cd06eb7a926ca519d9d9642b7b991c8b70e624c75378'
  name 'QGroundControl'
  homepage 'http://qgroundcontrol.com/'

  app 'qgroundcontrol.app'
end
