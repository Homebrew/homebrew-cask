cask 'gisto' do
  version '1.10.0'
  sha256 '6ec8cfc61ef908ea814d23f7ac768d50f15d1fc33d5bdb01cf4816c5bf30608d'

  # github.com/Gisto/Gisto was verified as official when first introduced to the cask
  url "https://github.com/Gisto/Gisto/releases/download/v#{version}/Gisto-#{version}.dmg"
  appcast 'https://github.com/Gisto/Gisto/releases.atom'
  name 'Gisto'
  homepage 'https://www.gistoapp.com/'

  app 'Gisto.app'
end
