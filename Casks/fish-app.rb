cask 'fish-app' do
  version '3.0.1'
  sha256 '104e023ed25f2ca5d4bb565c868bebaf64ef4394b8a518804da83b63bad327ea'

  # github.com/fish-shell/fish-shell was verified as official when first introduced to the cask
  url "https://github.com/fish-shell/fish-shell/releases/download/#{version}/fish.app.zip"
  appcast 'https://fishshell.com/release_notes.html'
  name 'Fish App'
  homepage 'https://fishshell.com/'

  app 'fish.app'
end
