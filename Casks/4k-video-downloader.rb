cask '4k-video-downloader' do
  version '4.7.0.2602'
  sha256 '3f42af1c85c347abbfe8f187adca91a4198341f3ba1a8e0bed668e86f98e068b'

  url "https://dl.4kdownload.com/app/4kvideodownloader_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download'
  name '4K Video Downloader'
  homepage 'https://www.4kdownload.com/products/product-videodownloader'

  app '4K Video Downloader.app'
end
