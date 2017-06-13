cask 'air-video-server-hd' do
  version '2.2.4-beta2'
  sha256 'f3578a21f537a04756c0f8af8f8a5ca845baa034e75477f766d78be92977607f'

  # amazonaws.com/AirVideoHD was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/AirVideoHD/Download/Air+Video+Server+HD+#{version}.dmg"
  appcast 'https://s3.amazonaws.com/AirVideoHD/Download/appcast.xml',
          checkpoint: '5bac1596a893cf4ac74db81a40404b6a98a0b8d14c3163cee14882b3557673f8'
  name 'Air Video Server HD'
  homepage 'http://www.inmethod.com/airvideohd'

  app 'Air Video Server HD.app'

  zap delete: [
                '~/Library/Caches/com.inmethod.AirVideoServerHD',
                '~/Library/Logs/AirVideoServerHD',
                '~/Library/Preferences/com.inmethod.AirVideoServerHD.plist',
              ]
end
