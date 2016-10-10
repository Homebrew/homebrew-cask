cask 'fish' do
  version '2.3.1'
  sha256 'd42bfd0137043a7f372590b78354a6a0153987bad2ddfdd38401ef192b5bf6cd'

  url "https://fishshell.com/files/#{version}/fish-#{version}.app.zip"
  name 'Fish App'
  homepage 'https://fishshell.com'

  app 'fish.app'
end
