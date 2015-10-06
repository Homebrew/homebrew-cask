cask :v1 => 'memorytamer' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://paddle.s3.amazonaws.com/fulfillment_downloads/1657/492767/MemoryTamer.zip'
  name 'MemoryTamer'
  appcast 'https://rink.hockeyapp.net/api/2/apps/128ebd3240db358d4b1ea5f228269de6',
          :sha256 => '49e4e56a8b1041d0bd3bab47fc01b237e5b22d12f1a625a6abcc1717692c3ea2'
  homepage 'http://www.memorytamer.com/'
  license :commercial

  container :nested => 'MemoryTamer.dmg'
  app 'MemoryTamer.app'
end
