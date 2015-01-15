cask :v1 => '4k-video-downloader' do
  version '3.4'
  sha256 'b521441b27269dac69997fe0917df031e81e3d918fbb8ac48e7477c889b10951'

  url "http://downloads.4kdownload.com/app/4kvideodownloader_#{version}.dmg"
  name '4K Video Downloader'
  homepage 'http://www.4kdownload.com/products/product-videodownloader'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app '4K Video Downloader.app'
end
