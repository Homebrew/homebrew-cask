cask '4k-video-downloader' do
  version '4.4.10.2342'
  sha256 '899a1ac9e27f45d92f2e7972c23fe8a44fa02489752f5c94266f5570d5568366'

  url "https://dl.4kdownload.com/app/4kvideodownloader_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download'
  name '4K Video Downloader'
  homepage 'https://www.4kdownload.com/products/product-videodownloader'

  app '4K Video Downloader.app'
end
