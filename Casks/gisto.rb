cask 'gisto' do
  version '1.10.11'
  sha256 '900831490d8486e2870e8e6a5a10d4b0bb374176930a65a5da08bfe3316446ef'

  # github.com/Gisto/Gisto was verified as official when first introduced to the cask
  url "https://github.com/Gisto/Gisto/releases/download/v#{version}/Gisto-#{version}.dmg"
  appcast 'https://github.com/Gisto/Gisto/releases.atom'
  name 'Gisto'
  homepage 'https://www.gistoapp.com/'

  app 'Gisto.app'
end
