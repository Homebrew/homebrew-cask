cask 'splashtop-streamer' do
  version '3.3.4.0'
  sha256 '3faa5c0f286e408c7ded40635574cb329c6b9c7ccf7408fe34011ce433905c70'

  # d17kmd0va0f0mp.cloudfront.net was verified as official when first introduced to the cask
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
