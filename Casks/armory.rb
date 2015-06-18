cask :v1 => 'armory' do
  version '0.93.2'
  sha256 '1b8c36433802087e772594335c55f1a08acfc9a0571157d874c13268eb4362f6'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/bitcoinarmory-releases/armory_#{version}_osx.tar.gz"
  name 'Armory'
  homepage 'https://bitcoinarmory.com/'
  license :affero

  app 'Armory.app'
end
