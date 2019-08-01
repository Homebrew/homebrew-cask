cask '4k-video-downloader' do
  version '4.8.2.2902'
  sha256 '74991a4c0bd0ff0bd1f90119c16132bc8e113cddd8eafc722c260c9f80337e5f'

  url "https://dl.4kdownload.com/app/4kvideodownloader_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download'
  name '4K Video Downloader'
  homepage 'https://www.4kdownload.com/products/product-videodownloader'

  depends_on macos: '>= :sierra'

  app '4K Video Downloader.app'
end
