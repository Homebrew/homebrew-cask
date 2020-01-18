cask '4k-video-downloader' do
  version '4.11.0.3360'
  sha256 'e3d5a6026679266ee197150398499574d05f752fcacfff242746b8b04460f423'

  url "https://dl.4kdownload.com/app/4kvideodownloader_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download'
  name '4K Video Downloader'
  homepage 'https://www.4kdownload.com/products/product-videodownloader'

  depends_on macos: '>= :sierra'

  app '4K Video Downloader.app'
end
