cask 'qgroundcontrol' do
  version :latest
  sha256 :no_check

  # s3-us-west-2.amazonaws.com/qgroundcontrol was verified as official when first introduced to the cask
  url 'https://s3-us-west-2.amazonaws.com/qgroundcontrol/latest/QGroundControl.dmg'
  name 'QGroundControl'
  homepage 'http://qgroundcontrol.com/'

  app 'qgroundcontrol.app'
end
