cask '4k-youtube-to-mp3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '3.0'
  sha256 '5f64537b7144689bd907db3eeafde3d53e83006d922a937b16c5fc0927efa340'

  url "https://downloads.4kdownload.com/app/4kyoutubetomp3_#{version}.dmg"
  name '4K YouTube to MP3'
  homepage 'https://www.4kdownload.com/products/product-youtubetomp3'

  app '4K YouTube to MP3.app'
end
