cask :v1 => 'fontforge' do
  version '2015-04-30'
  sha256 '69f01a6d15fc0e93c259828ec29e8e6243ba5a35017bee17d101ee54c2c2ab86'

  url "https://github.com/fontforge/fontforge/releases/download/20150430/FontForge-#{version}-Mac.app.dmg"
  appcast 'https://github.com/fontforge/fontforge/releases.atom'
  name 'fontforge'
  homepage 'https://fontforge.github.io/en-US/'
  license :bsd

  app 'FontForge.app'
  binary 'FontForge.app/Contents/MacOS/FontForge'

  conflicts_with :formula => 'fontforge'
end
