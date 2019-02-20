cask 'fish-app' do
  version '3.0.2'
  sha256 'cd842d08b06d888978f2e7da2b856e386a86e8180d2137da322045964f9badc5'

  # github.com/fish-shell/fish-shell was verified as official when first introduced to the cask
  url "https://github.com/fish-shell/fish-shell/releases/download/#{version}/fish-#{version}.app.zip"
  appcast 'https://fishshell.com/release_notes.html'
  name 'Fish App'
  homepage 'https://fishshell.com/'

  app 'fish.app'
end
