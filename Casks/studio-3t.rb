cask 'studio-3t' do
  version '2018.3.2'
  sha256 '9ea3a66fc952260eec335526ddb5f692064b919de4335446341cd64358c0d014'

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast 'https://files.studio3t.com/changelog/changelog.txt'
  name 'Studio 3T'
  homepage 'https://studio3t.com/'

  app 'Studio 3T.app'
end
