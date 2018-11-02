cask 'gisto' do
  version '1.10.13'
  sha256 'e7ecb0f93c2953c8a16a8919b6ae7befad69822c9f01ed4e68a961f3841c2f4f'

  # github.com/Gisto/Gisto was verified as official when first introduced to the cask
  url "https://github.com/Gisto/Gisto/releases/download/v#{version}/Gisto-#{version}.dmg"
  appcast 'https://github.com/Gisto/Gisto/releases.atom'
  name 'Gisto'
  homepage 'https://www.gistoapp.com/'

  app 'Gisto.app'
end
