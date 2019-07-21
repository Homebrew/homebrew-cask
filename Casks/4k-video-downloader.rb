cask '4k-video-downloader' do
  version '4.8.0.2852'
  sha256 'ffa643672831ba116552b70c13a51f851fbe5be9afd4d1435e2fbe6657befa41'

  url "https://dl.4kdownload.com/app/4kvideodownloader_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download'
  name '4K Video Downloader'
  homepage 'https://www.4kdownload.com/products/product-videodownloader'

  depends_on macos: '>= :sierra'

  app '4K Video Downloader.app'
end
