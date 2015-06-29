cask :v1 => '4k-youtube-to-mp3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '2.9'
  sha256 '8f62dead99131f7cb6936f07d95020f81fca6472d2a4d6bdd3ea37aefb5749ce'

  url "http://downloads.4kdownload.com/app/4kyoutubetomp3_#{version}.dmg"
  name '4K Youtube to MP3'
  homepage 'https://www.4kdownload.com/products/product-youtubetomp3'
  license :oss

  app '4K YouTube to MP3.app'
end
