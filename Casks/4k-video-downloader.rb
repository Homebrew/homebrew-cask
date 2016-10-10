cask '4k-video-downloader' do
  version '4.1'
  sha256 '15960d993f0b29136f0f338870c7469dbfff45750827b59528e9deff551ae171'

  url "https://downloads.4kdownload.com/app/4kvideodownloader_#{version}.dmg"
  name '4K Video Downloader'
  homepage 'https://www.4kdownload.com/products/product-videodownloader'

  app '4K Video Downloader.app'
end
