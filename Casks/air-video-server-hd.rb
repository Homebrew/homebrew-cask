cask :v1 => 'air-video-server-hd' do
  version '2.2.0'
  sha256 'f43c826dd5742d01e0586ad0e07edd2771353480482ac0b8eb9cc98da20a6f0e'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/AirVideoHD/Download/Air+Video+Server+HD+#{version}.dmg"
  name 'Air Video Server HD'
  appcast 'https://s3.amazonaws.com/AirVideoHD/Download/appcast.xml',
          :sha256 => 'b4b89e84e52dc52b699826f65fdb04a32b43c87f134ada629904af84fdff1bb4'
  homepage 'http://www.inmethod.com/airvideohd'
  license :gratis

  app 'Air Video Server HD.app'

  zap :delete => [
                  '~/Library/Caches/com.inmethod.AirVideoServerHD',
                  '~/Library/Logs/AirVideoServerHD',
                  '~/Library/Preferences/com.inmethod.AirVideoServerHD.plist',
                 ]
end
