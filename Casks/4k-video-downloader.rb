cask '4k-video-downloader' do
  version '4.2'
  sha256 'cd2651c0ff14cfadc8d36377951480da339ba0239cb08d6ba892dfe7685e624b'

  url "https://downloads.4kdownload.com/app/4kvideodownloader_#{version}.dmg"
  name '4K Video Downloader'
  homepage 'https://www.4kdownload.com/products/product-videodownloader'

  app '4K Video Downloader.app'
end
