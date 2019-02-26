cask 'fish-app' do
  version '3.0.2'
  sha256 'a643f571b26e2e586aa43c9bb13391248600d4f9c2c9519371cb9664aabb4233'

  # github.com/fish-shell/fish-shell was verified as official when first introduced to the cask
  url "https://github.com/fish-shell/fish-shell/releases/download/#{version}/fish.app.zip"
  appcast 'https://fishshell.com/release_notes.html'
  name 'Fish App'
  homepage 'https://fishshell.com/'

  app 'fish.app'
end
