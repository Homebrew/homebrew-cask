cask 'astroguider' do
  version '3.8'
  sha256 'd1abf1ced034c6ad27c8b254ebc7f65011058e1e768a2ebb808b8366a5d7d483'

  url "http://download.cloudmakers.eu/AstroGuider_#{version}.dmg"
  appcast 'http://www.cloudmakers.eu/astroguider/'
  name 'AstroGuider'
  homepage 'http://www.cloudmakers.eu/'

  app 'AstroGuider.app'
end
