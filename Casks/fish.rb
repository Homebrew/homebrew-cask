cask 'fish' do
  version '2.7.0'
  sha256 '4097dffb7f530eeecf5f832ddfa04469139e336a7886447693e77544d1852543'

  url "https://fishshell.com/files/#{version}/fish-#{version}.app.zip"
  appcast 'https://fishshell.com/release_notes.html',
          checkpoint: '6fc14d03c1de8fcbfe74778ee00dc500776c0ce13f1ad5995d78365f68e74152'
  name 'Fish App'
  homepage 'https://fishshell.com/'

  app 'fish.app'
end
