cask 'raw-photo-processor' do
  version '1896Beta'
  sha256 '94158a5b31bd22b98e7130ebe98704e39dabee61862db04ac1fc6cfb2785f4f1'

  url "https://www.raw-photo-processor.com/RPP/RPP64_#{version}.zip"
  appcast 'https://www.raw-photo-processor.com/rpp_updates_64.xml'
  name 'Raw Photo Processor'
  homepage 'https://www.raw-photo-processor.com/RPP/Overview.html'

  app 'Raw Photo Processor 64.app'
end
