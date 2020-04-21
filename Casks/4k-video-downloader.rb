cask '4k-video-downloader' do
  version '4.12.1.3580'
  sha256 '7fbef86431188b16136fcc6d5b334f7e4828248933b4b7fb532d2b30b3cb3b38'

  url "https://dl.4kdownload.com/app/4kvideodownloader_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download'
  name '4K Video Downloader'
  homepage 'https://www.4kdownload.com/products/product-videodownloader'

  depends_on macos: '>= :sierra'

  app '4K Video Downloader.app'
end
