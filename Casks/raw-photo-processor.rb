cask 'raw-photo-processor' do
  version '1876Beta'
  sha256 '458d9912db08ba1d874bed49242a51e2d01f32220ecc07cc7449fd5352e8bf3d'

  url "https://www.raw-photo-processor.com/RPP/RPP64_#{version}.zip"
  appcast 'https://www.raw-photo-processor.com/rpp_updates_64.xml'
  name 'Raw Photo Processor'
  homepage 'https://www.raw-photo-processor.com/RPP/Overview.html'

  app 'Raw Photo Processor 64.app'
end
