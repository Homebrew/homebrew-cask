cask '4k-video-downloader' do
  version '4.9.3.3112'
  sha256 '7e09a026cea462f2b060d76469638b2bb59144ddd6f63f0e7dd068630291a611'

  url "https://dl.4kdownload.com/app/4kvideodownloader_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download'
  name '4K Video Downloader'
  homepage 'https://www.4kdownload.com/products/product-videodownloader'

  depends_on macos: '>= :sierra'

  app '4K Video Downloader.app'
end
