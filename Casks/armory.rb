cask :v1 => 'armory' do
  version '0.93.1'
  sha256 '5e0a8aa9c0bfc49e188b10f4b93ce1998c2d27ec8cf4ee4b279c4ea7e28c17d8'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/bitcoinarmory-releases/armory_#{version}_osx.tar.gz"
  name 'Armory'
  homepage 'https://bitcoinarmory.com/'
  license :affero

  app 'Armory.app'
end
