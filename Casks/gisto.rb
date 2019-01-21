cask 'gisto' do
  version '1.10.26'
  sha256 'e63854a615f3e1a0f6a5d32b7fa83119da1861230fe01301e677e3d98775021b'

  # github.com/Gisto/Gisto was verified as official when first introduced to the cask
  url "https://github.com/Gisto/Gisto/releases/download/v#{version}/Gisto-#{version}.dmg"
  appcast 'https://github.com/Gisto/Gisto/releases.atom'
  name 'Gisto'
  homepage 'https://www.gistoapp.com/'

  app 'Gisto.app'
end
