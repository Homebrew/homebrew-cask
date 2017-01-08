cask 'isolator' do
  version '4.99beta'
  sha256 '8ab9344efd503606c88dbd5a139e932f37d25ec9b8d7c574a6af9f6cf1d9bcaf'

  url "http://willmore.eu/software/download/Isolator-#{version}.dmg"
  appcast 'http://willmore.eu/software/isolator/allversions.xml',
          checkpoint: 'ae7c35f74d6d2d4c524f05acf34054490899e288a340f0bc6e5954ff275c1a6a'
  name 'Isolator'
  homepage 'https://www.willmore.eu/software/isolator/'

  app 'Isolator.app'
end
