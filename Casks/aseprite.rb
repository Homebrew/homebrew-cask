cask 'aseprite' do
  version '1.1.4.1'
  sha256 '865c35c3f6ebab4ebf2003fccc7b6b0366faf66afe49143830dd30a2b9f6d61c'

  url "http://www.aseprite.org/downloads/Aseprite-v#{version}-trial-MacOSX.dmg"
  appcast 'https://github.com/aseprite/aseprite/releases.atom',
          checkpoint: 'e4a857e654965500533acb027da6a9ad20657c6b337bb78108c26ee37bdbd805'
  name 'Aseprite'
  homepage 'http://www.aseprite.org'
  license :gpl

  app 'Aseprite.app'
end
