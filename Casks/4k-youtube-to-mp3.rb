cask '4k-youtube-to-mp3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '3.0'
  sha256 '29b65a99f64ba5d6a1924df989b3cc1e0b7354fface7b4cbedc02eac17f2bd33'

  url "http://downloads.4kdownload.com/app/4kyoutubetomp3_#{version}.dmg"
  name '4K YouTube to MP3'
  homepage 'https://www.4kdownload.com/products/product-youtubetomp3'
  license :oss

  app '4K YouTube to MP3.app'
end
