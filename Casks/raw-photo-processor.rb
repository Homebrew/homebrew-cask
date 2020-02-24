cask 'raw-photo-processor' do
  version '4.8.0,1879'
  sha256 '767f0fce4dfb30bddfbe1eba487d91d27706480dff90cbc431d07c1964a7b485'

  url 'https://www.raw-photo-processor.com/RPP/RPP_64.zip'
  appcast 'https://www.raw-photo-processor.com/rpp_updates_64.xml'
  name 'Raw Photo Processor'
  homepage 'https://www.raw-photo-processor.com/RPP/Overview.html'

  app 'Raw Photo Processor 64.app'
end
