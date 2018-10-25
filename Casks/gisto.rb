cask 'gisto' do
  version '1.10.10'
  sha256 '2553e10ac78feef786d5d2e000fc903b65a28b215455cb3f7dcb98535425919e'

  # github.com/Gisto/Gisto was verified as official when first introduced to the cask
  url "https://github.com/Gisto/Gisto/releases/download/v#{version}/Gisto-#{version}.dmg"
  appcast 'https://github.com/Gisto/Gisto/releases.atom'
  name 'Gisto'
  homepage 'https://www.gistoapp.com/'

  app 'Gisto.app'
end
