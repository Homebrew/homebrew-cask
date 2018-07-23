cask '4k-video-downloader' do
  version '4.4.9.2332'
  sha256 '75572484dd782fa9034c861e6963927eb88d557a4823965cd7cf06f91a310f2c'

  url "https://dl.4kdownload.com/app/4kvideodownloader_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download'
  name '4K Video Downloader'
  homepage 'https://www.4kdownload.com/products/product-videodownloader'

  app '4K Video Downloader.app'
end
