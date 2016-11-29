cask 'sdl-ttf-framework' do
  version '2.0.11'
  sha256 '8c0c8eab34002dfff6695cec7066bd5e4aa56250b82dd9f5cd272f7e6f530dd4'

  url "https://www.libsdl.org/projects/SDL_ttf/release/SDL_ttf-#{version}.dmg"
  name 'SDL_ttf.framework'
  homepage 'https://www.libsdl.org'

  stage_only true
end
