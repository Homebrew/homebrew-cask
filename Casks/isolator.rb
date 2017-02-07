cask 'isolator' do
  version '4.99beta'
  sha256 '8ab9344efd503606c88dbd5a139e932f37d25ec9b8d7c574a6af9f6cf1d9bcaf'

  url "https://willmore.eu/software/download/Isolator-#{version}.dmg"
  appcast 'https://willmore.eu/software/isolator/allversions.xml',
          checkpoint: '4ae563966d0ad716442b79d477d901597a4230774e185a66d73ce9f504530887'
  name 'Isolator'
  homepage 'https://www.willmore.eu/software/isolator/'

  app 'Isolator.app'
end
