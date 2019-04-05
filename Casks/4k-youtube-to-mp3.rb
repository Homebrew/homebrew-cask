cask '4k-youtube-to-mp3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '3.6.0.2084'
  sha256 '4d71ae2794663c0166aa0c1697756df8816b1a332d88aac7cdd990c0d18ba6b2'

  url "https://dl.4kdownload.com/app/4kyoutubetomp3_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download'
  name '4K YouTube to MP3'
  homepage 'https://www.4kdownload.com/products/product-youtubetomp3'

  app '4K YouTube to MP3.app'
end
