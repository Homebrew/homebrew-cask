cask 'gisto' do
  version '1.13.1'
  sha256 '4d9fedcd7c3af8c9773126cd7f2a758af6293df3644728d80b8146dc164ca9fe'

  # github.com/Gisto/Gisto was verified as official when first introduced to the cask
  url "https://github.com/Gisto/Gisto/releases/download/v#{version}/Gisto-#{version}.dmg"
  appcast 'https://github.com/Gisto/Gisto/releases.atom'
  name 'Gisto'
  homepage 'https://www.gistoapp.com/'

  app 'Gisto.app'
end
