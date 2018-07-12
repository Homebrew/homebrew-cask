cask '4k-video-downloader' do
  version '4.4.8.2317'
  sha256 '7f5d794ba817a316792df62ede74f64ce406a7343fe0414840e4cb615808e42d'

  url "https://dl.4kdownload.com/app/4kvideodownloader_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download'
  name '4K Video Downloader'
  homepage 'https://www.4kdownload.com/products/product-videodownloader'

  app '4K Video Downloader.app'
end
