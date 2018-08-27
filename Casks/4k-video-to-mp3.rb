cask '4k-video-to-mp3' do
  version '2.4.1.873'
  sha256 'fb7896f3670b8705edc0e7f1f331e22accc8d31a99b14908d7399bdd89f4348e'

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
