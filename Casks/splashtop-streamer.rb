cask 'splashtop-streamer' do
  version '3.1.4.0'
  sha256 '6f01125fbcdf864ab2a37e8d00c90d94e0634e124df970ee320bbee1932185ff'

  # d17kmd0va0f0mp.cloudfront.net was verified as official when first introduced to the cask
  url "https://d17kmd0va0f0mp.cloudfront.net/mac/Splashtop_Streamer_Mac_v#{version}.dmg"
  appcast 'https://www.splashtop.com/wp-content/themes/responsive/downloadx.php?platform=mac',
          checkpoint: '62e7e0a8da06f90e0241264417fef6b3e49dc7f4ebccb3adbba46a55b673980c'
  name 'Splashtop Streamer'
  homepage 'https://www.splashtop.com/downloads'

  pkg 'Splashtop Streamer.pkg'

  uninstall quit:      'com.splashtop.Splashtop-Streamer',
            launchctl: [
                         'com.splashtop.streamer-daemon',
                         'com.splashtop.streamer-for-user',
                         'com.splashtop.streamer-srioframebuffer',
                       ],
            pkgutil:   'com.splashtop.splashtopStreamer.*'
end
