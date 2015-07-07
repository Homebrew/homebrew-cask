cask :v1 => '4k-youtube-to-mp3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '2.10'
  sha256 '0b672b44d6b63bcf1ef37ef0705c93f4d70a3cebbf5bfdf80379665dd3cabb21'

  url "http://downloads.4kdownload.com/app/4kyoutubetomp3_#{version}.dmg"
  name '4K Youtube to MP3'
  homepage 'https://www.4kdownload.com/products/product-youtubetomp3'
  license :oss

  app '4K YouTube to MP3.app'
end
