cask 'splashtop-streamer' do
  version '3.2.6.0'
  sha256 'b69cf91c0c908f5fd69c8ae3a361b261eeed308647de629c1d447f7d49e6eac9'

  # d17kmd0va0f0mp.cloudfront.net was verified as official when first introduced to the cask
  url "https://d17kmd0va0f0mp.cloudfront.net/mac/Splashtop_Streamer_Mac_INSTALLER_v#{version}.dmg"
  appcast 'https://www.splashtop.com/wp-content/themes/responsive/downloadx.php?platform=mac'
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
