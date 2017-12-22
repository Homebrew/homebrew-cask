cask 'studio-3t' do
  version '5.7.2'
  sha256 'a316ef16b9ffa00c7c0191bd6c3527ab8ad50c77b461d529159dcea99b68703f'

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast 'https://files.studio3t.com/changelog/changelog.txt',
          checkpoint: 'f5d50389dff6ce327227c96fda439209f84c4063005f5d93a24d4c9467587c88'
  name 'Studio 3T'
  homepage 'https://studio3t.com/'

  app 'Studio 3T.app'
end
