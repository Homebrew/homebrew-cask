cask 'gisto' do
  version '1.10.27'
  sha256 'de291bb8ecd5b29f4b6aee3cfedffbe5673c191e143f62c3abb3bc54495c15a7'

  # github.com/Gisto/Gisto was verified as official when first introduced to the cask
  url "https://github.com/Gisto/Gisto/releases/download/v#{version}/Gisto-#{version}.dmg"
  appcast 'https://github.com/Gisto/Gisto/releases.atom'
  name 'Gisto'
  homepage 'https://www.gistoapp.com/'

  app 'Gisto.app'
end
