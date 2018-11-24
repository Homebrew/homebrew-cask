cask 'gisto' do
  version '1.10.17'
  sha256 '8c95961fab98b6c7f70e70971597b6ad461884beeea17ea44d03896e797cac2a'

  # github.com/Gisto/Gisto was verified as official when first introduced to the cask
  url "https://github.com/Gisto/Gisto/releases/download/v#{version}/Gisto-#{version}.dmg"
  appcast 'https://github.com/Gisto/Gisto/releases.atom'
  name 'Gisto'
  homepage 'https://www.gistoapp.com/'

  app 'Gisto.app'
end
