cask '4k-video-downloader' do
  version '4.4.11.2412'
  sha256 'd9d2d3daf8ffbc7cddd6aca4e988b2cfd86247b3948fa3722430216fc0df1a11'

  url "https://dl.4kdownload.com/app/4kvideodownloader_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download'
  name '4K Video Downloader'
  homepage 'https://www.4kdownload.com/products/product-videodownloader'

  app '4K Video Downloader.app'
end
