cask '4k-youtube-to-mp3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '3.8.2.3082'
  sha256 '0812a18e2971a6a02ed6eb9a184b84ab9ef1f25bb9dc9e040c060e289bddefc9'

  url "https://dl.4kdownload.com/app/4kyoutubetomp3_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download'
  name '4K YouTube to MP3'
  homepage 'https://www.4kdownload.com/products/product-youtubetomp3'

  depends_on macos: '>= :sierra'

  app '4K YouTube to MP3.app'
end
