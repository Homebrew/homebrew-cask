cask '4k-video-downloader' do
  version '4.10.1.3240'
  sha256 '61e6e7f6626474aeb08aea244f61e792fc1b4fbbc9e440ef89908f51299f10c9'

  url "https://dl.4kdownload.com/app/4kvideodownloader_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download'
  name '4K Video Downloader'
  homepage 'https://www.4kdownload.com/products/product-videodownloader'

  depends_on macos: '>= :sierra'

  app '4K Video Downloader.app'
end
