cask 'rodeo' do
  version '1.2.1'
  sha256 'f5b6c2cdf5ed6c42f5726c4c40512bf6a5bd63bbb124f8cf9420175969f5be54'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://rodeo-releases.s3.amazonaws.com/#{version}/Rodeo-v#{version}-darwin_64.dmg"
  name 'Rodeo'
  homepage 'http://rodeo.yhat.com/'
  license :closed

  app 'Rodeo.app'
end
