cask 'air-video-server-hd' do
  version '2.2.4-beta1'
  sha256 'e4444e0ed2c63cdb7aa45b38374ef166d70d98e7a4d06e4f4ea90f5e6fa6fcbb'

  # amazonaws.com/AirVideoHD was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/AirVideoHD/Download/Air+Video+Server+HD+#{version}.dmg"
  appcast 'https://s3.amazonaws.com/AirVideoHD/Download/appcast.xml',
          checkpoint: 'e327ff4f0f6128267a1ef1af2e92086228a69d43203823ff4ce9cdb435bdeaf7'
  name 'Air Video Server HD'
  homepage 'http://www.inmethod.com/airvideohd'

  app 'Air Video Server HD.app'

  zap delete: [
                '~/Library/Caches/com.inmethod.AirVideoServerHD',
                '~/Library/Logs/AirVideoServerHD',
                '~/Library/Preferences/com.inmethod.AirVideoServerHD.plist',
              ]
end
