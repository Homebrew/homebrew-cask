cask :v1 => 'armory' do
  version '0.93.3'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/bitcoinarmory-releases/armory_#{version}_osx.tar.gz"
  name 'Armory'
  homepage 'https://bitcoinarmory.com/'
  license :affero

  app 'Armory.app'
end
