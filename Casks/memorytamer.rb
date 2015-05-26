cask :v1 => 'memorytamer' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://paddle.s3.amazonaws.com/fulfillment_downloads/1657/492767/MemoryTamer.zip'
  name 'MemoryTamer'
  appcast 'https://rink.hockeyapp.net/api/2/apps/128ebd3240db358d4b1ea5f228269de6',
          :sha256 => 'c256f2963829ccaa81d2bd0c98f1580bd93d0e593e946e57d5585c1c44a2bf7b'
  homepage 'http://www.memorytamer.com/'
  license :commercial

  container :nested => 'MemoryTamer.dmg'
  app 'MemoryTamer.app'
end
