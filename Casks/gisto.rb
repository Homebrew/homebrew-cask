cask 'gisto' do
  version '1.12.3'
  sha256 '1bd3180cf78987bf841c0c39ffce4925b58e66b8ef00f18e24f26ad232cd5276'

  # github.com/Gisto/Gisto was verified as official when first introduced to the cask
  url "https://github.com/Gisto/Gisto/releases/download/v#{version}/Gisto-#{version}.dmg"
  appcast 'https://github.com/Gisto/Gisto/releases.atom'
  name 'Gisto'
  homepage 'https://www.gistoapp.com/'

  app 'Gisto.app'
end
