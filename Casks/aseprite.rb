cask 'aseprite' do
  version '1.1.11'
  sha256 'b131d47845b52dd56ea212c832f91208e5bbe16a7be2ac188e70ef40c553501e'

  url "http://www.aseprite.org/downloads/Aseprite-v#{version}-trial-MacOSX.dmg"
  appcast 'https://github.com/aseprite/aseprite/releases.atom',
          checkpoint: 'a70760ec596a74b138ce410c9d3a396a8087b8201331893023c35ec1c03f2835'
  name 'Aseprite'
  homepage 'https://www.aseprite.org/'

  app 'Aseprite.app'
end
