cask 'gisto' do
  version '1.9.87'
  sha256 'b4ef8d0e2066c9dd089d1b87557651adbfc6bde0f39b236fe4544c5b9a6e9412'

  # github.com/Gisto/Gisto was verified as official when first introduced to the cask
  url "https://github.com/Gisto/Gisto/releases/download/v#{version}/Gisto-#{version}.dmg"
  appcast 'https://github.com/Gisto/Gisto/releases.atom'
  name 'Gisto'
  homepage 'https://www.gistoapp.com/'

  app 'Gisto.app'
end
