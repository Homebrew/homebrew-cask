cask 'studio-3t' do
  version '5.1.0'
  sha256 'dadebaf4b47832c6ac11977ad15accee5c1e5105e8254186d19e5a75a99fad52'

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast 'http://files.studio3t.com/changelog/changelog.txt',
          checkpoint: '9fbd97055bde402bbeea72d66c4b38ef1a12dd7dbc7d9c91bbb63f47e7e103bd'
  name 'Studio 3T'
  homepage 'https://studio3t.com/'

  app 'Studio 3T.app'
end
