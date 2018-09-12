cask 'gisto' do
  version '1.9.98'
  sha256 'e7990fc61589b446cefc1d580b8c80252754fcd90853e8deb525f8bb79bfad2c'

  # github.com/Gisto/Gisto was verified as official when first introduced to the cask
  url "https://github.com/Gisto/Gisto/releases/download/v#{version}/Gisto-#{version}.dmg"
  appcast 'https://github.com/Gisto/Gisto/releases.atom'
  name 'Gisto'
  homepage 'https://www.gistoapp.com/'

  app 'Gisto.app'
end
