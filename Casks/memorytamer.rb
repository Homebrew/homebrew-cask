cask :v1 => 'memorytamer' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url "https://paddle.s3.amazonaws.com/fulfillment_downloads/1657/492767/MemoryTamer.zip"
  homepage 'http://www.memorytamer.com/'
  license :commercial

  container :nested => 'MemoryTamer.dmg'
  app 'MemoryTamer.app'
end
