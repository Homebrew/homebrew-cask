cask 'gisto' do
  version '1.10.29'
  sha256 '63cedb108b38a12e512b62aebfe394c82d06ce533b17902d0aa0d92519b896d1'

  # github.com/Gisto/Gisto was verified as official when first introduced to the cask
  url "https://github.com/Gisto/Gisto/releases/download/v#{version}/Gisto-#{version}.dmg"
  appcast 'https://github.com/Gisto/Gisto/releases.atom'
  name 'Gisto'
  homepage 'https://www.gistoapp.com/'

  app 'Gisto.app'
end
