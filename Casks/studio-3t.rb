cask 'studio-3t' do
  version '5.0.1'
  sha256 '96b66cbff97301d3f877c159233d0f31b5d58a126ff562c08e83267d4b104b6a'

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast 'http://files.studio3t.com/changelog/changelog.txt',
          checkpoint: '6c29029b66ac71933015576ccb9d8d2f5f391d87d538c72456065ca0f9af1eae'
  name 'Studio 3T'
  homepage 'https://studio3t.com/'

  app 'Studio 3T.app'
end
