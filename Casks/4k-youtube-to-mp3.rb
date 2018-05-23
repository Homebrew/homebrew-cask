cask '4k-youtube-to-mp3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '3.3.5.1797'
  sha256 '9d9becc84c4df834ab13c62ccf063d333da677bd0973738305bac230c1500b3c'

  url "https://dl.4kdownload.com/app/4kyoutubetomp3_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download',
          checkpoint: '6976352a19a6acbaf5953cb3db8d18a88d5258e9d05fd2a0d5018be457741204'
  name '4K YouTube to MP3'
  homepage 'https://www.4kdownload.com/products/product-youtubetomp3'

  app '4K YouTube to MP3.app'
end
