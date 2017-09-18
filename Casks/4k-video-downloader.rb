cask '4k-video-downloader' do
  version '4.3.2.2215'
  sha256 '0b3c1f062bcab126d659cbbd84d7ac97ec7d6d146cc72707c7ee457d5de8c6f7'

  url "https://downloads2.4kdownload.com/app/4kvideodownloader_#{version.major_minor}.dmg"
  appcast 'https://www.4kdownload.com/download',
          checkpoint: 'c54b263fa24e27e9adf0941a0339b323768dce5b037022ba6f44e2c632ed1051'
  name '4K Video Downloader'
  homepage 'https://www.4kdownload.com/products/product-videodownloader'

  app '4K Video Downloader.app'
end
