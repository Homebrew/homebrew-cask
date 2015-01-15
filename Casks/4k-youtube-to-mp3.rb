cask :v1 => '4k-youtube-to-mp3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '2.9'
  sha256 '07a558e3dddc957386d12f1a13880e6d02e86ccdabc64e3ac66c78eccde8fe09'

  url "http://downloads.4kdownload.com/app/4kyoutubetomp3_#{version}.dmg"
  name '4K Youtube to MP3'
  homepage 'http://www.4kdownload.com/products/product-youtubetomp3'
  license :oss

  app '4K YouTube to MP3.app'
end
