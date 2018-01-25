cask '4k-youtube-to-mp3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '3.3.0.1747'
  sha256 '99db8e33f290b6352f2fb2efaef5cb2949c0322b5a26fc57189362e927856ecd'

  url "https://dl.4kdownload.com/app/4kyoutubetomp3_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download',
          checkpoint: 'bcc9ec5479e3d7db1f10175083eb4c73dd6590b8bfe3cab26f6d78efbbc4c583'
  name '4K YouTube to MP3'
  homepage 'https://www.4kdownload.com/products/product-youtubetomp3'

  app '4K YouTube to MP3.app'
end
