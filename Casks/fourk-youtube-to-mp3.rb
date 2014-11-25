cask :v1 => 'fourk-youtube-to-mp3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '3.2.5'
  sha256 '6c60b0830964bf682d9140e79bd732baa01299fb5f27f4eb67cdbe94231c6094'

  url "https://4kdownload.googlecode.com/files/4kyoutubetomp#{version.sub('.','_')}.dmg"
  homepage 'http://www.4kdownload.com/products/product-youtubetomp3'
  license :oss

  app '4K YouTube to MP3.app'
end
