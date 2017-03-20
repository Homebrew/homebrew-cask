cask '4k-video-to-mp3' do
  version '2.3'
  sha256 '8a0dcacaf9ac1c2c49b931985ff32695f5062ef949b2270c6f9aedd86a29cd2a'

  url "https://downloads.4kdownload.com/app/4kvideotomp3_#{version}.dmg"
  name '4K Video to MP3'
  homepage 'https://www.4kdownload.com/products/product-videotomp3'

  app '4K Video to MP3.app'

  zap delete: [
                '~/Library/Preferences/com.4kdownload.4K Video to MP3.plist',
                '~/Library/Application Support/4kdownload.com',
              ]
end
