cask '4k-video-downloader' do
  version '4.9.0.3032'
  sha256 '4c3fed2388b2d5bc50f34bdee6fbbf002c14d877c9e24d8aa1cd99c4d9fda483'

  url "https://dl.4kdownload.com/app/4kvideodownloader_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download'
  name '4K Video Downloader'
  homepage 'https://www.4kdownload.com/products/product-videodownloader'

  depends_on macos: '>= :sierra'

  app '4K Video Downloader.app'
end
