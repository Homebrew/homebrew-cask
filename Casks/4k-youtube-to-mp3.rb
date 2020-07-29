cask '4k-youtube-to-mp3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '3.12.3.3680'
  sha256 '4c6f5b557e279b01b36f52f46a0edcd496d879d5ad972398ee933115e75e61b4'

  url "https://dl.4kdownload.com/app/4kyoutubetomp3_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download'
  name '4K YouTube to MP3'
  homepage 'https://www.4kdownload.com/products/product-youtubetomp3'

  depends_on macos: '>= :sierra'

  app '4K YouTube to MP3.app'
end
