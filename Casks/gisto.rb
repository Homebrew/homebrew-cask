cask 'gisto' do
  version '1.10.5'
  sha256 '1435b12c75777a97ddd3e28577fcd54247015326954e6aebb1befb72f2e5f66c'

  # github.com/Gisto/Gisto was verified as official when first introduced to the cask
  url "https://github.com/Gisto/Gisto/releases/download/v#{version}/Gisto-#{version}.dmg"
  appcast 'https://github.com/Gisto/Gisto/releases.atom'
  name 'Gisto'
  homepage 'https://www.gistoapp.com/'

  app 'Gisto.app'
end
