cask '4k-youtube-to-mp3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '3.3.6.1809'
  sha256 '3166bba028cd7aa98021bbc7616881289d67760624b9c7747709e517851f7ba3'

  url "https://dl.4kdownload.com/app/4kyoutubetomp3_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download',
          checkpoint: 'f2777a0a97a28e24e763132e040dea6e2359c2cbb805eab952a3f383383eeff6'
  name '4K YouTube to MP3'
  homepage 'https://www.4kdownload.com/products/product-youtubetomp3'

  app '4K YouTube to MP3.app'
end
