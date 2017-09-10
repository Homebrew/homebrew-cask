cask '4k-video-to-mp3' do
  version '2.3.2.843'
  sha256 'dd90007d3307bb175afbfd1b2dae075d92cefff9ce3fbd156ca4fe9de709e5cb'

  url "https://downloads2.4kdownload.com/app/4kvideotomp3_#{version.major_minor}.dmg"
  appcast 'https://www.4kdownload.com/download',
          checkpoint: 'c54b263fa24e27e9adf0941a0339b323768dce5b037022ba6f44e2c632ed1051'
  name '4K Video to MP3'
  homepage 'https://www.4kdownload.com/products/product-videotomp3'

  app '4K Video to MP3.app'

  zap trash: [
               '~/Library/Preferences/com.4kdownload.4K Video to MP3.plist',
               '~/Library/Application Support/4kdownload.com',
             ]
end
