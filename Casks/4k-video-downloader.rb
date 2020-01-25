cask '4k-video-downloader' do
  version '4.11.1.3390'
  sha256 '39f744c3de3ffcbb3a6238cd1d85ffe7f8f970eb61bed87f9d98deac5f5e9d4b'

  url "https://dl.4kdownload.com/app/4kvideodownloader_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download'
  name '4K Video Downloader'
  homepage 'https://www.4kdownload.com/products/product-videodownloader'

  depends_on macos: '>= :sierra'

  app '4K Video Downloader.app'
end
