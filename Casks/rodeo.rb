cask 'rodeo' do
  version '1.2.1'
  sha256 '0d9bfac3ede8d7f1f1f4c10c5fdf7cb2be37bdc46c2b43a2e9f3f4b400ea75fe'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://rodeo-releases.s3.amazonaws.com/#{version}/Rodeo-v#{version}-darwin_64.dmg"
  name 'Rodeo'
  homepage 'http://rodeo.yhat.com/'
  license :closed

  app 'Rodeo.app'
end
