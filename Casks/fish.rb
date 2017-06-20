cask 'fish' do
  version '2.6.0'
  sha256 '9cd25bc469dbd0415dda125acedfc1a9512c28847b4bec52ce3fd127b78f6ecd'

  url "https://fishshell.com/files/#{version}/fish-#{version}.app.zip"
  appcast 'https://fishshell.com/release_notes.html',
          checkpoint: '6bb8e589c1e26f8c6285c96e1771e11969c36ccce3fd6d5e15a39a1e57c1865d'
  name 'Fish App'
  homepage 'https://fishshell.com/'

  app 'fish.app'
end
