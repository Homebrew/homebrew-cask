cask '4k-youtube-to-mp3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '3.0'
  sha256 '8b077edb8a01f14c1aafe9c4a4d3eb4366a821946e18daa8441d479e82aa14d6'

  url "https://downloads.4kdownload.com/app/4kyoutubetomp3_#{version}.dmg"
  name '4K YouTube to MP3'
  homepage 'https://www.4kdownload.com/products/product-youtubetomp3'
  license :oss

  app '4K YouTube to MP3.app'
end
