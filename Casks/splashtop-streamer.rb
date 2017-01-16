cask 'splashtop-streamer' do
  version '3.1.2.0'
  sha256 'e1ee59c52dbb7c478e324d0b0d883bd5dcadadc396a2d8103b0c00543c273fdb'

  # d17kmd0va0f0mp.cloudfront.net was verified as official when first introduced to the cask
  url "https://d17kmd0va0f0mp.cloudfront.net/mac/Splashtop_Streamer_Mac_v#{version}.dmg"
  appcast 'http://www.splashtop.com/wp-content/themes/responsive/downloadx.php?platform=mac',
          checkpoint: 'c5c866f9c2b1fb7de154a03449a5dfd8afdb960957c15631e460aadaaaced493'
  name 'Splashtop Streamer'
  homepage 'https://www.splashtop.com/downloads'

  pkg 'Splashtop Streamer.pkg'

  uninstall pkgutil: 'com.splashtop.splashtopStreamer.*'
end
