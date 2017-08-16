cask 'studio-3t' do
  version '5.4.0'
  sha256 'd5cb4a4592100e17c9c0c59f3f903f027deefc6871885d55ae72a208f750b5fc'

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast 'http://files.studio3t.com/changelog/changelog.txt',
          checkpoint: '67be472e244e5127fe7352c3f9cdc55f9d84d21489e3babd78f8b2716072f112'
  name 'Studio 3T'
  homepage 'https://studio3t.com/'

  app 'Studio 3T.app'
end
