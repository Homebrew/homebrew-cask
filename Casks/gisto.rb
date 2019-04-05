cask 'gisto' do
  version '1.11.2'
  sha256 '4d87a5f0d6494233a16db52a51319c2c59a06f96752fe80e45d23da3556ec5a0'

  # github.com/Gisto/Gisto was verified as official when first introduced to the cask
  url "https://github.com/Gisto/Gisto/releases/download/v#{version}/Gisto-#{version}.dmg"
  appcast 'https://github.com/Gisto/Gisto/releases.atom'
  name 'Gisto'
  homepage 'https://www.gistoapp.com/'

  app 'Gisto.app'
end
