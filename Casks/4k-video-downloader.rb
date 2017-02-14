cask '4k-video-downloader' do
  version '4.2'
  sha256 '3d09b059952f54742a44877ac50e406ef47a93c26e3733605a0b42c109844db3'

  url "https://downloads.4kdownload.com/app/4kvideodownloader_#{version}.dmg"
  name '4K Video Downloader'
  homepage 'https://www.4kdownload.com/products/product-videodownloader'

  app '4K Video Downloader.app'
end
