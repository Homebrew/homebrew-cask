cask 'gisto' do
  version '0.3.2'
  sha256 '5a3666977eca39099f99e52e77c82244cb2baf52baeb8f21efcf3b369de27789'

  # github.com was verified as official when first introduced to the cask
  url "https://github.com/Gisto/Gisto/releases/download/0.3.2-beta/Gisto-v#{version}-macos-x64.dmg"
  appcast 'http://www.gistoapp.com/GistoAppCast.xml',
          checkpoint: 'c959dc4ada9c64029566aa4b1174818e360df84444da255d9626c2bef41f9cf3'
  name 'Gisto'
  homepage 'http://www.gistoapp.com/'

  app 'Gisto.app'
end
