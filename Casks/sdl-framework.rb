cask 'sdl-framework' do
  version '1.2.15'
  sha256 '49e228446599b1f77af812a6276dd7a3f230f8d7a02d1b7b62bb99a874262834'

  url "https://www.libsdl.org/release/SDL-#{version}.dmg"
  name 'SDL.framework'
  homepage 'https://www.libsdl.org'

  stage_only true
end
