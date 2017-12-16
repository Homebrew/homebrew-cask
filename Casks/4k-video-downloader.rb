cask '4k-video-downloader' do
  version '4.4.0.2235'
  sha256 '0141d884858c1b0c57b2589150d10c50cacef7753988c9eb8bc2d12888738250'

  url "https://dl.4kdownload.com/app/4kvideodownloader_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download',
          checkpoint: 'bcc9ec5479e3d7db1f10175083eb4c73dd6590b8bfe3cab26f6d78efbbc4c583'
  name '4K Video Downloader'
  homepage 'https://www.4kdownload.com/products/product-videodownloader'

  app '4K Video Downloader.app'
end
