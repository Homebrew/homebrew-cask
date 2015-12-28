cask '4k-video-downloader' do
  version '3.7'
  sha256 '4fc9d184adb4fa348c9008fbe81e59c24d706a6cb1d2e3d5619f4f7a3b01ca8b'

  url "http://downloads.4kdownload.com/app/4kvideodownloader_#{version}.dmg"
  name '4K Video Downloader'
  homepage 'https://www.4kdownload.com/products/product-videodownloader'
  license :freemium

  app '4K Video Downloader.app'
end
