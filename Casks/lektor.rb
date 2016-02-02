cask 'lektor' do
  version '1.1'
  sha256 'bb284bd3f92830ff0603de057a8897f5b575a8ed0bd1cb937b2be95f15cf6262'

  url "https://github.com/lektor/lektor/releases/download/#{version}/Lektor-#{version}.dmg"
  appcast 'https://github.com/lektor/lektor/releases.atom',
          checkpoint: 'eeb07104f9eda7a2740fe15a4b2d5bb2cf1b08ae335240cacc4cf3accc5e1083'
  name 'Lektor'
  homepage 'https://www.getlektor.com/'
  license :oss

  app 'Lektor.app'
end
