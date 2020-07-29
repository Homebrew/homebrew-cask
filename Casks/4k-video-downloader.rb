cask '4k-video-downloader' do
  version '4.12.5.3670'
  sha256 '6b4852b9ab9fe3a19771eae4d33dac7c9c43fd7ac461271ed6c45bb9f8ac1e57'

  url "https://dl.4kdownload.com/app/4kvideodownloader_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download'
  name '4K Video Downloader'
  homepage 'https://www.4kdownload.com/products/product-videodownloader'

  depends_on macos: '>= :sierra'

  app '4K Video Downloader.app'
end
