cask '4k-video-downloader' do
  version '4.3.2.2215'
  sha256 '0b3c1f062bcab126d659cbbd84d7ac97ec7d6d146cc72707c7ee457d5de8c6f7'

  url "https://downloads2.4kdownload.com/app/4kvideodownloader_#{version.major_minor}.dmg"
  appcast 'https://www.4kdownload.com/download',
          checkpoint: '8de0a5725c670e5fa688b8f7ede33e197766ff2acd12e1de4b8d6bb5a267fdd3'
  name '4K Video Downloader'
  homepage 'https://www.4kdownload.com/products/product-videodownloader'

  app '4K Video Downloader.app'
end
