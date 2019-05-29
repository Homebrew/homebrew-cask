cask '4k-video-to-mp3' do
  version '2.6.1.913'
  sha256 '50e9ae18335e907cea6f6ac97940a31de88927f0857260d124bd3b2c2b68cf88'

  url "https://dl.4kdownload.com/app/4kvideotomp3_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download'
  name '4K Video to MP3'
  homepage 'https://www.4kdownload.com/products/product-videotomp3'

  app '4K Video to MP3.app'

  zap trash: [
               '~/Library/Preferences/com.4kdownload.4K Video to MP3.plist',
               '~/Library/Application Support/4kdownload.com',
             ]
end
