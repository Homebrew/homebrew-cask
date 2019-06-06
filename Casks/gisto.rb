cask 'gisto' do
  version '1.12.2'
  sha256 '34ddec96777205c82bdbaca90b50ecce04006ea92051895fb3a7ef99e87ed2ba'

  # github.com/Gisto/Gisto was verified as official when first introduced to the cask
  url "https://github.com/Gisto/Gisto/releases/download/v#{version}/Gisto-#{version}.dmg"
  appcast 'https://github.com/Gisto/Gisto/releases.atom'
  name 'Gisto'
  homepage 'https://www.gistoapp.com/'

  app 'Gisto.app'
end
