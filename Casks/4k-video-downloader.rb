cask '4k-video-downloader' do
  version '4.5.0.2482'
  sha256 '79e01ee639f2eafaa8836521a80a6f7de9e48a57533ee0e3bf6f4f899b05601d'

  url "https://dl.4kdownload.com/app/4kvideodownloader_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download'
  name '4K Video Downloader'
  homepage 'https://www.4kdownload.com/products/product-videodownloader'

  app '4K Video Downloader.app'
end
