cask 'gisto' do
  version '1.12.12'
  sha256 '785146c2450089c012b3c7ac4d219ba4b5cf6acf03ff7ec306cf1da2a12e72e6'

  # github.com/Gisto/Gisto was verified as official when first introduced to the cask
  url "https://github.com/Gisto/Gisto/releases/download/v#{version}/Gisto-#{version}.dmg"
  appcast 'https://github.com/Gisto/Gisto/releases.atom'
  name 'Gisto'
  homepage 'https://www.gistoapp.com/'

  app 'Gisto.app'
end
