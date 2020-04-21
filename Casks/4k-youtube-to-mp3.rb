cask '4k-youtube-to-mp3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '3.12.0.3590'
  sha256 'd54eac913939d7e56ec942943a6a078640b1d2778a3b7e778ee268164145b529'

  url "https://dl.4kdownload.com/app/4kyoutubetomp3_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download'
  name '4K YouTube to MP3'
  homepage 'https://www.4kdownload.com/products/product-youtubetomp3'

  depends_on macos: '>= :sierra'

  app '4K YouTube to MP3.app'
end
