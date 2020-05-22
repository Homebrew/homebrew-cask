cask '4k-video-downloader' do
  version '4.12.3.3650'
  sha256 '162a8122c3d7942a3312291fb4ac0fe6f22331b637fd76a18d15f95c001409da'

  url "https://dl.4kdownload.com/app/4kvideodownloader_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download'
  name '4K Video Downloader'
  homepage 'https://www.4kdownload.com/products/product-videodownloader'

  depends_on macos: '>= :sierra'

  app '4K Video Downloader.app'
end
