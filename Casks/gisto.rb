cask 'gisto' do
  version '1.12.10'
  sha256 '16d29bd92adae2925d6ee3b6e3f8b770b5e276347ac6e7e529779f7bc100c369'

  # github.com/Gisto/Gisto was verified as official when first introduced to the cask
  url "https://github.com/Gisto/Gisto/releases/download/v#{version}/Gisto-#{version}.dmg"
  appcast 'https://github.com/Gisto/Gisto/releases.atom'
  name 'Gisto'
  homepage 'https://www.gistoapp.com/'

  app 'Gisto.app'
end
