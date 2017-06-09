cask '4k-video-downloader' do
  version '4.2.1.2185'
  sha256 '3d09b059952f54742a44877ac50e406ef47a93c26e3733605a0b42c109844db3'

  url "https://downloads2.4kdownload.com/app/4kvideodownloader_#{version.major_minor}.dmg"
  appcast 'https://www.4kdownload.com/download',
          checkpoint: '1c02cd4a525457c3267dbdaa1a313ee0e547e4d31e4352f564a57b06fa4e9bd1'
  name '4K Video Downloader'
  homepage 'https://www.4kdownload.com/products/product-videodownloader'

  app '4K Video Downloader.app'
end
