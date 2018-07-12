cask '4k-youtube-to-mp3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '3.3.7.1819'
  sha256 'c4618dd5f40ab8495d7486f69df06793c6b73293109235e5885b50bc14bea620'

  url "https://dl.4kdownload.com/app/4kyoutubetomp3_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download'
  name '4K YouTube to MP3'
  homepage 'https://www.4kdownload.com/products/product-youtubetomp3'

  app '4K YouTube to MP3.app'
end
