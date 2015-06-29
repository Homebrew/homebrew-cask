cask :v1 => '4k-video-downloader' do
  version '3.6'
  sha256 'ea2bcdb0be1358d7de11777f134547483dab71519873b16e6c1d393376143269'

  url "http://downloads.4kdownload.com/app/4kvideodownloader_#{version}.dmg"
  name '4K Video Downloader'
  homepage 'https://www.4kdownload.com/products/product-videodownloader'
  license :freemium

  app '4K Video Downloader.app'
end
