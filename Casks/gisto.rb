cask 'gisto' do
  version '1.10.23'
  sha256 '116f44cb2fb6d67d0cb2a1b922832f77cea84be5662293d3cafd7e6c9f37bd4c'

  # github.com/Gisto/Gisto was verified as official when first introduced to the cask
  url "https://github.com/Gisto/Gisto/releases/download/v#{version}/Gisto-#{version}.dmg"
  appcast 'https://github.com/Gisto/Gisto/releases.atom'
  name 'Gisto'
  homepage 'https://www.gistoapp.com/'

  app 'Gisto.app'
end
