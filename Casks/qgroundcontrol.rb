cask 'qgroundcontrol' do
  version '3.2.0'
  sha256 '210265941ccd2efc990ca4ee11d943d4aafb8e98ee09d180daf8502c04c2e873'

  # github.com/mavlink/qgroundcontrol/releases/download was verified as official when first introduced to the cask
  url "https://github.com/mavlink/qgroundcontrol/releases/download/v#{version}/QGroundControl.dmg"
  appcast 'https://github.com/mavlink/qgroundcontrol/releases.atom',
          checkpoint: '5ab64372c8266e0c59085d23a18b632eac6750b6dad42bb4cc3265f8bfe91689'
  name 'QGroundControl'
  homepage 'http://qgroundcontrol.com/'

  app 'qgroundcontrol.app'
end
