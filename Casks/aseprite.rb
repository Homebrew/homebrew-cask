cask 'aseprite' do
  version '1.1.5.2'
  sha256 '95381a617b150220cf2dcf604e8332d5876ab23aad9d1fdcd7c0b062921373f3'

  url "http://www.aseprite.org/downloads/Aseprite-v#{version}-trial-MacOSX.dmg"
  appcast 'https://github.com/aseprite/aseprite/releases.atom',
          checkpoint: 'e7c9adc8e1a707994221a1adfae8effcccfd4a64fca1774182bb41b36933ab8c'
  name 'Aseprite'
  homepage 'http://www.aseprite.org'
  license :gpl

  app 'Aseprite.app'
end
