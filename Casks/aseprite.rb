cask 'aseprite' do
  version '1.2.6'
  sha256 'f870609ed161b6ae26e72017f8b8c0a9a14bae139061a6e975b400bb5d01d00c'

  url "https://www.aseprite.org/downloads/trial/Aseprite-v#{version}-trial-MacOSX.dmg"
  appcast 'https://github.com/aseprite/aseprite/releases.atom',
          checkpoint: '744fcad5e11c653ab587c888886f7ce045f2c5ade95013ff3b0b31109c58211e'
  name 'Aseprite'
  homepage 'https://www.aseprite.org/'

  app 'Aseprite.app'
end
