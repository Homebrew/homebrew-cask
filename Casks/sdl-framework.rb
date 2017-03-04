cask 'sdl-framework' do
  version '2.0.5'
  sha256 '09309e5af6739ce91e8e5db443604a0d0d85e0b728652423ba1a00e26363c30c'

  url "https://www.libsdl.org/release/SDL#{version.major}-#{version}.dmg"
  appcast 'https://www.libsdl.org/release/',
          checkpoint: '96be2bfa97cbeb863b64bf12cca8b658966907d94a227ccdd05853f0875a0338'
  name 'SDL.framework'
  homepage 'https://www.libsdl.org/'

  stage_only true
end
