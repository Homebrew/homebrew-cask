cask 'aseprite' do
  version '1.1.12'
  sha256 '110b6603c2883506fe2a1b5e7d727f088be27e6ad2be1cce41c9a75952a25e33'

  url "http://www.aseprite.org/downloads/Aseprite-v#{version}-trial-MacOSX.dmg"
  appcast 'https://github.com/aseprite/aseprite/releases.atom',
          checkpoint: 'c445ef96809cbd9dea2428bbc4a144fbdaa83556ea4b903b218ac682f72d4c91'
  name 'Aseprite'
  homepage 'https://www.aseprite.org/'

  app 'Aseprite.app'
end
