cask :v1 => 'armory' do
  version '0.92.3'
  sha256 '25aac165bcdfc326ca36e630e9676dd1b116b246209e7bc9b646001977deb947'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/bitcoinarmory-releases/armory_#{version}_osx.tar.gz"
  name 'Armory'
  homepage 'https://bitcoinarmory.com/'
  license :affero

  app 'Armory.app'
end
