cask '4k-video-to-mp3' do
  version '2.3.2.843'
  sha256 'dd90007d3307bb175afbfd1b2dae075d92cefff9ce3fbd156ca4fe9de709e5cb'

  url "https://downloads2.4kdownload.com/app/4kvideotomp3_#{version.major_minor}.dmg"
  appcast 'https://www.4kdownload.com/download',
          checkpoint: '49ff507a887439ff101f36b84c58788834a7a4a7638127609c8a49fa6278b627'
  name '4K Video to MP3'
  homepage 'https://www.4kdownload.com/products/product-videotomp3'

  app '4K Video to MP3.app'

  zap trash: [
               '~/Library/Preferences/com.4kdownload.4K Video to MP3.plist',
               '~/Library/Application Support/4kdownload.com',
             ]
end
