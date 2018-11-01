cask 'raw-photo-processor' do
  version '1864Beta'
  sha256 'f0d3419b2a773708093c4e5e33859800573da19637a3585ffd43625318480fe3'

  url "https://www.raw-photo-processor.com/RPP/RPP64_#{version}.zip"
  name 'Raw Photo Processor'
  homepage 'https://www.raw-photo-processor.com/RPP/Overview.html'

  app 'Raw Photo Processor 64.app'
end
