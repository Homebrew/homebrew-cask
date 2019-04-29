cask 'raw-photo-processor' do
  version '4.8.0,1703'
  sha256 '578b2ad21ba0a6a1704a6b80083be5096aba18a50ea394711cf9c12f8b46a538'

  url 'https://www.raw-photo-processor.com/RPP/RPP64_Upd.zip'
  appcast 'https://www.raw-photo-processor.com/rpp_updates_64.xml'
  name 'Raw Photo Processor'
  homepage 'https://www.raw-photo-processor.com/RPP/Overview.html'

  app 'Raw Photo Processor 64.app'
end
