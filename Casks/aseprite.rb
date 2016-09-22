cask 'aseprite' do
  version '1.1.8'
  sha256 '45be3e82c08b33237ce2ea3efe8081ab0d1d405f4a9464260c475a85edde02c6'

  url "http://www.aseprite.org/downloads/Aseprite-v#{version}-trial-MacOSX.dmg"
  appcast 'https://github.com/aseprite/aseprite/releases.atom',
          checkpoint: '11668f40d391db770bc2d45511a558c7791c642158641a0f97ca18c32afc7e6a'
  name 'Aseprite'
  homepage 'http://www.aseprite.org'
  license :gpl

  app 'Aseprite.app'
end
