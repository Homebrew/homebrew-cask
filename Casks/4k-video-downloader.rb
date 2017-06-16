cask '4k-video-downloader' do
  version '4.2.1.2185'
  sha256 '3d09b059952f54742a44877ac50e406ef47a93c26e3733605a0b42c109844db3'

  url "https://downloads2.4kdownload.com/app/4kvideodownloader_#{version.major_minor}.dmg"
  appcast 'https://www.4kdownload.com/download',
          checkpoint: '9fe8dcb8ad4126c3e296b842be3e03d76a8eb9957f00881354c93d663cc4e77d'
  name '4K Video Downloader'
  homepage 'https://www.4kdownload.com/products/product-videodownloader'

  app '4K Video Downloader.app'
end
