cask '4k-video-to-mp3' do
  version '2.3.1.833'
  sha256 '8a0dcacaf9ac1c2c49b931985ff32695f5062ef949b2270c6f9aedd86a29cd2a'

  url "https://downloads2.4kdownload.com/app/4kvideotomp3_#{version.major_minor}.dmg"
  appcast 'https://www.4kdownload.com/download',
          checkpoint: '1c02cd4a525457c3267dbdaa1a313ee0e547e4d31e4352f564a57b06fa4e9bd1'
  name '4K Video to MP3'
  homepage 'https://www.4kdownload.com/products/product-videotomp3'

  app '4K Video to MP3.app'

  zap delete: [
                '~/Library/Preferences/com.4kdownload.4K Video to MP3.plist',
                '~/Library/Application Support/4kdownload.com',
              ]
end
