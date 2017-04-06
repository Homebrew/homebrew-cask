cask 'studio-3t' do
  version '5.1.1'
  sha256 '730a7fb8d8da605f44696bbc5dd34e3b1fcc2d3e74e8eaa308d806f9081ef96f'

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast 'http://files.studio3t.com/changelog/changelog.txt',
          checkpoint: '9fbd97055bde402bbeea72d66c4b38ef1a12dd7dbc7d9c91bbb63f47e7e103bd'
  name 'Studio 3T'
  homepage 'https://studio3t.com/'

  app 'Studio 3T.app'
end
