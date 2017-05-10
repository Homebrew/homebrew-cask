cask 'sdl-framework' do
  version '2.0.5'
  sha256 '09309e5af6739ce91e8e5db443604a0d0d85e0b728652423ba1a00e26363c30c'

  url "https://www.libsdl.org/release/SDL#{version.major}-#{version}.dmg"
  appcast 'https://www.libsdl.org/release/',
          checkpoint: '88871a300301cd16d8b0435b3e6a086ce039f9740f9e0dcf7e67d686cc151143'
  name 'SDL.framework'
  homepage 'https://www.libsdl.org/'

  stage_only true
end
