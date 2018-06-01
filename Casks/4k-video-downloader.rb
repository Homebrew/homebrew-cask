cask '4k-video-downloader' do
  version '4.4.7.2307'
  sha256 '4aa585e4f89d3ffc80618518dc7950aed8bf16c07fcb3f77224b8b9fd9eec7a2'

  url "https://dl.4kdownload.com/app/4kvideodownloader_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download',
          checkpoint: 'bc602309e88e5f0311dbad6bb4feaa37187e97aa2db120383b4e765347959bf8'
  name '4K Video Downloader'
  homepage 'https://www.4kdownload.com/products/product-videodownloader'

  app '4K Video Downloader.app'
end
