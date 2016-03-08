cask '4k-youtube-to-mp3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '2.10'
  sha256 'faf7173e0b83227cfec90831b9344c552afc116cb4ae26a4e5584f16496f6e63'

  url "http://downloads.4kdownload.com/app/4kyoutubetomp3_#{version}.dmg"
  name '4K Youtube to MP3'
  homepage 'https://www.4kdownload.com/products/product-youtubetomp3'
  license :oss

  app '4K YouTube to MP3.app'
end
