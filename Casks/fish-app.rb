cask 'fish-app' do
  version '3.0.0'
  sha256 'c583f51bea4a1b965458218d1bc60361d86695d41eb3b15298add2d0a0bb9c1b'

  # github.com/fish-shell/fish-shell was verified as official when first introduced to the cask
  url "https://github.com/fish-shell/fish-shell/releases/download/#{version}/fish-#{version}.app.zip"
  appcast 'https://fishshell.com/release_notes.html'
  name 'Fish App'
  homepage 'https://fishshell.com/'

  depends_on macos: '>= :snow_leopard'

  app "fish-#{version}.app"
end
