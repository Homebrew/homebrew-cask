cask 'qgroundcontrol' do
  version '2.5.2'
  sha256 'b42f6e3de99250a86c9cb5860c8477ee449d5f81f06d32c04f564596198f0b83'

  # qgroundcontrol.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://qgroundcontrol.s3.amazonaws.com/QGroundControl-Stable-V#{version}.dmg"
  name 'QGroundControl'
  homepage 'http://qgroundcontrol.org/'

  app 'qgroundcontrol.app'
end
