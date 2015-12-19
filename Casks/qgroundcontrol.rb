cask 'qgroundcontrol' do
  version '2.5.2'
  sha256 'b42f6e3de99250a86c9cb5860c8477ee449d5f81f06d32c04f564596198f0b83'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://qgroundcontrol.s3.amazonaws.com/QGroundControl-Stable-V#{version}.dmg"
  name 'QGroundControl'
  homepage 'http://qgroundcontrol.org'
  license :gpl

  app 'qgroundcontrol.app'
end
