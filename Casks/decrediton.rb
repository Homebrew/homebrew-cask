cask 'decrediton' do
  version '1.5.0'
  sha256 '10bf6ecbba2e5c51624c1b4ef1c61dd2465c02e5241d4fc9ce810567fe97c005'

  url "https://github.com/decred/decred-binaries/releases/download/v#{version}/decrediton-v#{version}.dmg"
  appcast 'https://github.com/decred/decred-binaries/releases.atom'
  name 'Decrediton'
  homepage 'https://github.com/decred/decrediton'

  app 'decrediton.app'
end
