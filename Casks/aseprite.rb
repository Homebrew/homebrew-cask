cask 'aseprite' do
  version '1.1.5.7'
  sha256 'becb9bb0b60739af06699f600d1a18355e6b5eea5fb4bcac353861a12a6222cb'

  url "http://www.aseprite.org/downloads/Aseprite-v#{version}-trial-MacOSX.dmg"
  appcast 'https://github.com/aseprite/aseprite/releases.atom',
          checkpoint: '2e8c3f20263108699c68f6cd623d93883f475b6d38ac66436a9edfdd0e104c0a'
  name 'Aseprite'
  homepage 'http://www.aseprite.org'
  license :gpl

  app 'Aseprite.app'
end
