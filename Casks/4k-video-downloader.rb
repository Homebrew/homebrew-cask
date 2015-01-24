cask :v1 => '4k-video-downloader' do
  version '3.4'
  sha256 'a57c782529f87b98cb37cc911e5dc81ac658f7cb07b3b9b6d32b4ec42d99cb9d'

  url "http://downloads.4kdownload.com/app/4kvideodownloader_#{version}.dmg"
  name '4K Video Downloader'
  homepage 'http://www.4kdownload.com/products/product-videodownloader'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app '4K Video Downloader.app'
end
