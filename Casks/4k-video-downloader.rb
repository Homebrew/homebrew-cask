cask '4k-video-downloader' do
  version '4.4.4.2275'
  sha256 'b04c496832be1faba443807391ed293987337d4c42953c11f6b1388a70b227f8'

  url "https://dl.4kdownload.com/app/4kvideodownloader_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download',
          checkpoint: '89c3a317a578aa5ef3291f295bb4ff1ffc73f87c026475924dbc3e9f50fe695b'
  name '4K Video Downloader'
  homepage 'https://www.4kdownload.com/products/product-videodownloader'

  app '4K Video Downloader.app'
end
