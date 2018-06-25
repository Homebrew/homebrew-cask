cask 'gisto' do
  version '0.3.2'
  sha256 '5a3666977eca39099f99e52e77c82244cb2baf52baeb8f21efcf3b369de27789'

  # github.com/Gisto/Gisto was verified as official when first introduced to the cask
  url "https://github.com/Gisto/Gisto/releases/download/#{version}-beta/Gisto-v#{version}-macos-x64.dmg"
  appcast 'https://github.com/Gisto/Gisto/releases.atom'
  name 'Gisto'
  homepage 'https://www.gistoapp.com/'

  app 'Gisto.app'
end
