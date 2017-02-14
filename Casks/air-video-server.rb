cask 'air-video-server' do
  version '2.4.6-beta3u2'
  sha256 '479af913987a4cc8414969a8d4a4c164a4bd0a22d156829a983b4c58e9dd3f6e'

  # amazonaws.com/AirVideo was verified as official when first introduced to the cask
  url "http://s3.amazonaws.com/AirVideo/Air+Video+Server+#{version}.dmg"
  name 'Air Video Server'
  homepage 'http://www.inmethod.com/air-video/'

  app 'Air Video Server.app'
end
