cask 'raw-photo-processor' do
  version '1875Beta'
  sha256 'cdc7d2798915fa49e776c03083fd0fe578a10ee1cb14dc918aa6db4f460105c9'

  url "https://www.raw-photo-processor.com/RPP/RPP64_#{version}.zip"
  appcast 'https://www.raw-photo-processor.com/rpp_updates_64.xml'
  name 'Raw Photo Processor'
  homepage 'https://www.raw-photo-processor.com/RPP/Overview.html'

  app 'Raw Photo Processor 64.app'
end
