cask '4k-video-downloader' do
  version '4.4.0'
  sha256 '0141d884858c1b0c57b2589150d10c50cacef7753988c9eb8bc2d12888738250'

  url "https://dl.4kdownload.com/app/4kvideodownloader_#{version}.dmg"
  appcast 'https://www.4kdownload.com/download',
          checkpoint: '74c74ea1a5c9ed50ae5c6fa5556bb556dd70f5af5188400a5cfd3e53ef0ab12c'
  name '4K Video Downloader'
  homepage 'https://www.4kdownload.com/products/product-videodownloader'

  app '4K Video Downloader.app'
end
