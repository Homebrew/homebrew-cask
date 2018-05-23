cask '4k-video-downloader' do
  version '4.4.6.2295'
  sha256 '821979eeb980351c253bc49e5d103ad6791d0520e406bf582a97565974a428f6'

  url "https://dl.4kdownload.com/app/4kvideodownloader_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download',
          checkpoint: 'e0ccc86a09b343e9f5f55be129817dfc7e03a974379c8c1ec0202f59a3badf64'
  name '4K Video Downloader'
  homepage 'https://www.4kdownload.com/products/product-videodownloader'

  app '4K Video Downloader.app'
end
