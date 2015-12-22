cask 'biba' do
  version '3.7.3752'
  sha256 'fad2844cf812ee2b51c885e79d2a6fee9709ea4106e2e7ab49bcfa86b02ba7a4'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3-us-west-1.amazonaws.com/downloads.biba.com/builds/Biba-OSX-#{version}.dmg"
  appcast 'https://s3-us-west-1.amazonaws.com/downloads.biba.com/appcast/mac',
          :sha256 => '85825cf0d081700ed109d27c790e51accabd952b99909fb4b1407a68157fc3a1'
  name 'Biba'
  homepage 'https://www.biba.com'
  license :closed

  app 'Biba.app'
end
