cask :v1 => 'air-video-server' do
  version '2.4.6-beta3u2'
  sha256 '479af913987a4cc8414969a8d4a4c164a4bd0a22d156829a983b4c58e9dd3f6e'

  url "https://s3.amazonaws.com/AirVideo/Air+Video+Server+#{version}.dmg"
  homepage 'http://www.inmethod.com/air-video/'
  license :unknown    # todo: improve this machine-generated value

  app 'Air Video Server.app'
end
