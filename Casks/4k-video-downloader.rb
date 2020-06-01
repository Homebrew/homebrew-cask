cask '4k-video-downloader' do
  version '4.12.4.3660'
  sha256 'dfc7ff51c346d8bea0e45cd52dd775c7918bf114a94da4a2dcd289cb3bd31930'

  url "https://dl.4kdownload.com/app/4kvideodownloader_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download'
  name '4K Video Downloader'
  homepage 'https://www.4kdownload.com/products/product-videodownloader'

  depends_on macos: '>= :sierra'

  app '4K Video Downloader.app'
end
