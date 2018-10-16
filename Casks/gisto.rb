cask 'gisto' do
  version '1.10.9'
  sha256 'cbc8639bc127a65504c082a114a08fb8b02262a0a60ae7d6d8a914e5e9e1ff57'

  # github.com/Gisto/Gisto was verified as official when first introduced to the cask
  url "https://github.com/Gisto/Gisto/releases/download/v#{version}/Gisto-#{version}.dmg"
  appcast 'https://github.com/Gisto/Gisto/releases.atom'
  name 'Gisto'
  homepage 'https://www.gistoapp.com/'

  app 'Gisto.app'
end
