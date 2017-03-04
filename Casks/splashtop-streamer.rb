cask 'splashtop-streamer' do
  version '3.1.2.0'
  sha256 'e1ee59c52dbb7c478e324d0b0d883bd5dcadadc396a2d8103b0c00543c273fdb'

  # d17kmd0va0f0mp.cloudfront.net was verified as official when first introduced to the cask
  url "https://d17kmd0va0f0mp.cloudfront.net/mac/Splashtop_Streamer_Mac_v#{version}.dmg"
  appcast 'https://www.splashtop.com/wp-content/themes/responsive/downloadx.php?platform=mac',
          checkpoint: '4ba18465508615ae26412e19d4515c8cd3b19c7dd7e2790c168632d5f7a3fb40'
  name 'Splashtop Streamer'
  homepage 'https://www.splashtop.com/downloads'

  pkg 'Splashtop Streamer.pkg'

  uninstall pkgutil: 'com.splashtop.splashtopStreamer.*'
end
