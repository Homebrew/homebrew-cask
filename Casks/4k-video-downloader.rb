cask '4k-video-downloader' do
  version '4.4.7.2307'
  sha256 '4aa585e4f89d3ffc80618518dc7950aed8bf16c07fcb3f77224b8b9fd9eec7a2'

  url "https://dl.4kdownload.com/app/4kvideodownloader_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download',
          checkpoint: 'f2777a0a97a28e24e763132e040dea6e2359c2cbb805eab952a3f383383eeff6'
  name '4K Video Downloader'
  homepage 'https://www.4kdownload.com/products/product-videodownloader'

  app '4K Video Downloader.app'
end
