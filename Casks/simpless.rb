cask :v1 => 'simpless' do
  version '1.4'
  sha256 '424b1b8b56f0568beef107bea2c81d4cc9576f850a3ba84f8b5b5abbc0715886'

  url "http://wearekiss.com/files/SimpLESS-#{version}-mac.zip"
  homepage 'http://wearekiss.com/simpless'
  license :unknown

  app 'SimpLESS.app'
end
