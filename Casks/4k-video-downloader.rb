cask '4k-video-downloader' do
  version '4.4.5.2285'
  sha256 '3b7fd422d1b49510d61fbafc546104e51d22ccbc1a7fecdb4497c886c84ec0ef'

  url "https://dl.4kdownload.com/app/4kvideodownloader_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download',
          checkpoint: 'a246eca2ffdef26baf777f4f710ac692ecd57aec0a270a3f9986f9deb15962fc'
  name '4K Video Downloader'
  homepage 'https://www.4kdownload.com/products/product-videodownloader'

  app '4K Video Downloader.app'
end
