cask '4k-youtube-to-mp3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '3.8.0.3032'
  sha256 '9068d8ba3717b307292ce6f6188fc6f3252efc39c2dc791097ef886aa5f41a4b'

  url "https://dl.4kdownload.com/app/4kyoutubetomp3_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download'
  name '4K YouTube to MP3'
  homepage 'https://www.4kdownload.com/products/product-youtubetomp3'

  depends_on macos: '>= :sierra'

  app '4K YouTube to MP3.app'
end
