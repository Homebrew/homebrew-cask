cask 'splashtop-streamer' do
  version '3.4.0.0'
  sha256 'b0ec92daf4ac3a6b0da2e02f7cb6fdbf1dba456021be7fca5750f8fb3bdc0a4c'

  # d17kmd0va0f0mp.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://d17kmd0va0f0mp.cloudfront.net/mac/Splashtop_Streamer_Mac_INSTALLER_v#{version}.dmg"
  appcast 'https://www.splashtop.com/wp-content/themes/responsive/downloadx.php?platform=mac'
  name 'Splashtop Streamer'
  homepage 'https://www.splashtop.com/downloads'

  auto_updates true

  pkg 'Splashtop Streamer.pkg'

  uninstall quit:      'com.splashtop.Splashtop-Streamer',
            launchctl: [
                         'com.splashtop.streamer-daemon',
                         'com.splashtop.streamer-for-user',
                         'com.splashtop.streamer-srioframebuffer',
                       ],
            pkgutil:   'com.splashtop.splashtopStreamer.*'
end
