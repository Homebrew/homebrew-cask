cask 'gisto' do
  version '1.12.1'
  sha256 'bd409c73265d821480cf3ba7013bed3ccd90ad71aebc2eb5127fe2c50ec95d69'

  # github.com/Gisto/Gisto was verified as official when first introduced to the cask
  url "https://github.com/Gisto/Gisto/releases/download/v#{version}/Gisto-#{version}.dmg"
  appcast 'https://github.com/Gisto/Gisto/releases.atom'
  name 'Gisto'
  homepage 'https://www.gistoapp.com/'

  app 'Gisto.app'
end
