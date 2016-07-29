cask '4k-video-downloader' do
  version '3.8'
  sha256 '2c3f3a8ff66ae73417779422b7f6784d8e45f0ead8a6d331ec27acda7b9fb17f'

  url "http://downloads.4kdownload.com/app/4kvideodownloader_#{version}.dmg"
  name '4K Video Downloader'
  homepage 'https://www.4kdownload.com/products/product-videodownloader'
  license :freemium

  app '4K Video Downloader.app'
end
