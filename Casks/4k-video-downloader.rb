cask '4k-video-downloader' do
  version '4.1'
  sha256 '63704ec24ed6195ceb3b480af3f45896d53566db83fa5debcb64a9c1e894ae1a'

  url "https://downloads.4kdownload.com/app/4kvideodownloader_#{version}.dmg"
  name '4K Video Downloader'
  homepage 'https://www.4kdownload.com/products/product-videodownloader'

  app '4K Video Downloader.app'
end
