cask 'rodeo' do
  version '1.3.0'
  sha256 '3c469a8a0c2f5e40a98a0ecb6a961493459b0a6934b8f05949e53b7bc10845f1'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://rodeo-releases.s3.amazonaws.com/#{version}/Rodeo-v#{version}-darwin_64.dmg"
  name 'Rodeo'
  homepage 'http://rodeo.yhat.com/'
  license :closed

  app 'Rodeo.app'
end
