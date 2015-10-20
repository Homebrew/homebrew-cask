cask :v1 => '4k-video-downloader' do
  version '3.6'
  sha256 'c298303cae1a50b381f45b8ca64f3cd1455c92558d28f1f79a2d2f5ea9fdc58e'

  url "http://downloads.4kdownload.com/app/4kvideodownloader_#{version}.dmg"
  name '4K Video Downloader'
  homepage 'https://www.4kdownload.com/products/product-videodownloader'
  license :freemium

  app '4K Video Downloader.app'
end
