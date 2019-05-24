cask '4k-video-downloader' do
  version '4.7.2.2732'
  sha256 '123d6324012597b1fb853cddb3798659e44948d8a54e05aac5435e0f0ebd5ce6'

  url "https://dl.4kdownload.com/app/4kvideodownloader_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download'
  name '4K Video Downloader'
  homepage 'https://www.4kdownload.com/products/product-videodownloader'

  app '4K Video Downloader.app'
end
