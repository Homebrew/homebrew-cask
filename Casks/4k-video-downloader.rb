cask :v1 => '4k-video-downloader' do
  version '3.1'
  sha256 '5f2243e9d2352b411414e3819d2dbb36cbd2c4f4d9a72a9579e4fbc1f820a324'

  url "http://downloads.4kdownload.com/app/4kvideodownloader_#{version}.dmg"
  name '4K Video Downloader'
  homepage 'http://www.4kdownload.com/products/product-videodownloader'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app '4K Video Downloader.app'
end
