cask '4k-video-downloader' do
  version '4.7.1.2712'
  sha256 '787422466b475ef7f63cfc76e8620104232dc59155391ff9f937e97d508a7602'

  url "https://dl.4kdownload.com/app/4kvideodownloader_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download'
  name '4K Video Downloader'
  homepage 'https://www.4kdownload.com/products/product-videodownloader'

  app '4K Video Downloader.app'
end
