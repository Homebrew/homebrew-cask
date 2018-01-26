cask '4k-video-downloader' do
  version '4.4.3.2265'
  sha256 'ad8f4ee076a3af717603d07c43c2b98c614026374d86c7b78749d83f8ff00b34'

  url "https://dl.4kdownload.com/app/4kvideodownloader_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download',
          checkpoint: '9fe7bc8c844c6ae4dce09aa9b73cf8ad1a6a14fabccf4f18d577e36cebe56fe6'
  name '4K Video Downloader'
  homepage 'https://www.4kdownload.com/products/product-videodownloader'

  app '4K Video Downloader.app'
end
