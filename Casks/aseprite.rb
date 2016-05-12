cask 'aseprite' do
  version '1.1.5.4'
  sha256 '9b69ad5860cf4c5eeacbb141512158f8e6271de1eecd1d64d51a1ea5c7ce38f5'

  url "http://www.aseprite.org/downloads/Aseprite-v#{version}-trial-MacOSX.dmg"
  appcast 'https://github.com/aseprite/aseprite/releases.atom',
          checkpoint: 'bab35c4491700ed85cf263e6365ccba0a39f1950234259cb63d748f236ee894e'
  name 'Aseprite'
  homepage 'http://www.aseprite.org'
  license :gpl

  app 'Aseprite.app'
end
