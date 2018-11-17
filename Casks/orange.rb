cask 'orange' do
  version '3.18.0'
  sha256 '1084fd3c60869c22a1c2d04599686bf4b6656c51788d78cc508b3aff739f421f'

  url "https://orange.biolab.si/download/files/Orange#{version.major}-#{version}.dmg"
  name 'Orange'
  homepage 'https://orange.biolab.si/'

  app "Orange#{version.major}.app"
end
