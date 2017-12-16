cask '4k-video-to-mp3' do
  version '2.4.0.863'
  sha256 '55ace78c0400b015eca916dfbafa91489e01044abcfaf0dde6c21799f94a7ff4'

  url "https://dl.4kdownload.com/app/4kvideotomp3_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download',
          checkpoint: 'bcc9ec5479e3d7db1f10175083eb4c73dd6590b8bfe3cab26f6d78efbbc4c583'
  name '4K Video to MP3'
  homepage 'https://www.4kdownload.com/products/product-videotomp3'

  app '4K Video to MP3.app'

  zap trash: [
               '~/Library/Preferences/com.4kdownload.4K Video to MP3.plist',
               '~/Library/Application Support/4kdownload.com',
             ]
end
