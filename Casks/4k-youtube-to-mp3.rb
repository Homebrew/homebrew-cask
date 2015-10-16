cask :v1 => '4k-youtube-to-mp3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '2.10'
  sha256 'a7bb0e4650cbb1dc971b24742480c18981a6088278cd520ad0c06981f8e0f7f0'

  url "http://downloads.4kdownload.com/app/4kyoutubetomp3_#{version}.dmg"
  name '4K Youtube to MP3'
  homepage 'https://www.4kdownload.com/products/product-youtubetomp3'
  license :oss

  app '4K YouTube to MP3.app'
end
