cask :v1 => '4k-video-downloader' do
  version '3.6'
  sha256 '9adac4eaff8478be06dacd995e54c70bddc1571795e095003a298e52479aea21'

  url "http://downloads.4kdownload.com/app/4kvideodownloader_#{version}.dmg"
  name '4K Video Downloader'
  homepage 'https://www.4kdownload.com/products/product-videodownloader'
  license :freemium

  app '4K Video Downloader.app'
end
