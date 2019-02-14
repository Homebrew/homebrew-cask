cask 'fish-app' do
  version '3.0.1'
  sha256 '8abc06050d4e714a005ad6864386a7ddc4ff7ad1f24c26c94dd6e62cfe8ecce5'

  # github.com/fish-shell/fish-shell was verified as official when first introduced to the cask
  url "https://github.com/fish-shell/fish-shell/releases/download/#{version}/fish-#{version}.app.zip"
  appcast 'https://fishshell.com/release_notes.html'
  name 'Fish App'
  homepage 'https://fishshell.com/'

  app 'fish.app'
end
