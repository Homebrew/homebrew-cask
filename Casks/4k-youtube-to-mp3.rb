cask '4k-youtube-to-mp3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '3.11.0.3480'
  sha256 'a46aa91b194d1e01a76159b429c5471924cb92cc83c292f661f00446667ce69c'

  url "https://dl.4kdownload.com/app/4kyoutubetomp3_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download'
  name '4K YouTube to MP3'
  homepage 'https://www.4kdownload.com/products/product-youtubetomp3'

  depends_on macos: '>= :sierra'

  app '4K YouTube to MP3.app'
end
