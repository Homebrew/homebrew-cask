cask :v1 => '4k-video-downloader' do
  version '3.5'
  sha256 :no_check # required as upstream package is updated in-place

  url "http://downloads.4kdownload.com/app/4kvideodownloader_#{version}.dmg"
  name '4K Video Downloader'
  homepage 'https://www.4kdownload.com/products/product-videodownloader'
  license :freemium

  app '4K Video Downloader.app'
end
