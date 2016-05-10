cask 'aseprite' do
  version '1.1.5.3'
  sha256 '5bbf31c82e701eeeea4439e3b2e41232846716b9a299a7b02ff3ee7d2eeae75f'

  url "http://www.aseprite.org/downloads/Aseprite-v#{version}-trial-MacOSX.dmg"
  appcast 'https://github.com/aseprite/aseprite/releases.atom',
          checkpoint: 'ec01eb36566582811c368a86510004382010c47fb2cf62aa9557649d4d54be4b'
  name 'Aseprite'
  homepage 'http://www.aseprite.org'
  license :gpl

  app 'Aseprite.app'
end
